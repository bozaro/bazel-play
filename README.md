# Reproducing

```sh
# Cleanup
rm -fR .cache
bazel clean

# Run tests (after local test execution `test.xml` and `test.log` is present in build event file)
bazel test //... --remote_download_minimal --build_event_binary_file=bazel.events.bin --build_event_text_file=bazel.events.txt --disk_cache=.cache

# Check event files
grep test.xml bazel.events.txt
# Output:
#   name: "test.xml"
#   uri: "file:///home/bozaro/.cache/bazel/_bazel_bozaro/57ca677fe0293e8ce868d480187c263c/execroot/__main__/bazel-out/k8-fastbuild/testlogs/simple_test/test.xml"

grep test.xml bazel.events.bin
# Output:
#   grep: bazel.events.bin: binary file matches



# Run tests (after local cached test `test.xml` and `test.log` is present in build event file)
bazel test //... --remote_download_minimal --build_event_binary_file=bazel.events.bin --build_event_text_file=bazel.events.txt --disk_cache=.cache

# Check event files
grep test.xml bazel.events.txt
# Output:
#   name: "test.xml"
#   uri: "file:///home/bozaro/.cache/bazel/_bazel_bozaro/57ca677fe0293e8ce868d480187c263c/execroot/__main__/bazel-out/k8-fastbuild/testlogs/simple_test/test.xml"

grep test.xml bazel.events.bin
# Output:
#   grep: bazel.events.bin: binary file matches



# Run tests (after remote cached test `test.log` is present in build event file, but `test.xml` is absent)
bazel clean
bazel test //... --remote_download_minimal --build_event_binary_file=bazel.events.bin --build_event_text_file=bazel.events.txt --disk_cache=.cache

# Check event files
grep test.xml bazel.events.txt
# Output: none

grep test.xml bazel.events.bin
# Output: none
```
