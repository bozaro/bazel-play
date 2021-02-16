load("@rules_pkg//:pkg.bzl", "pkg_tar")

pkg_tar(
    name = "bin",
    package_dir = "/usr/local/bin",
    files = {
        "out/minikube-linux-amd64": "minikube",
        "out/docker-machine-driver-kvm2": "docker-machine-driver-kvm2",
    },
    mode = "0755",
)

pkg_tar(
    visibility = ["//visibility:public"],
    name = "data",
    extension = "tar.gz",
    deps = [
        ":bin",
    ],
)
