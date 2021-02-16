load("@rules_pkg//:pkg.bzl", "pkg_deb")
load("//:versions.bzl", "HELM_VERSION")

pkg_deb(
    name = "deb",
    architecture = "amd64",
    data = "@helm-linux-amd64//:data",
    depends = [],
    description = "The package manager for Kubernetes",
    homepage = "https://helm.sh/",
    maintainer = "Artem V. Navrotskiy <navrotskiy@joom.com>",
    package = "helm",
    version = HELM_VERSION,
)
