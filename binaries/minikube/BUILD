load("@rules_pkg//:pkg.bzl", "pkg_deb")
load("//:versions.bzl", "MINIKUBE_VERSION")

pkg_deb(
    name = "deb",
    architecture = "amd64",
    data = "@minikube-linux-amd64//:data",
    depends = [
        "zlib1g-dev",
        "unzip",
    ],
    description = "Minikube provisions and manages local Kubernetes clusters optimized for development workflows",
    homepage = "https://kubernetes.io/ru/docs/tutorials/hello-minikube/",
    maintainer = "Artem V. Navrotskiy <navrotskiy@joom.com>",
    package = "minikube",
    version = MINIKUBE_VERSION,
)
