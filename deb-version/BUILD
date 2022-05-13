load("@rules_pkg//:pkg.bzl", "pkg_deb", "pkg_tar")
load("//:version.bzl", "version")

version(
    name = "foo-version",
    version = "1.13",
    deps = [
        ":foo-manual",
    ],
)

pkg_tar(
    name = "foo-manual",
    srcs = [
        "README.md",
    ],
    mode = "0644",
    package_dir = "/usr/share/doc/foo",
)

pkg_tar(
    name = "debian-data",
    extension = "tar.gz",
    deps = [
        ":foo-manual",
    ],
)

pkg_deb(
    name = "debian",
    architecture = "amd64",
    data = ":debian-data",
    depends = [],
    description = "Bazel PoC debian package",
    maintainer = "joomcode",
    package = "foo",
    package_file_name = "foo_unknown_amd64.deb",
    version = "1.2.{BUILD_TIMESTAMP}",
)
