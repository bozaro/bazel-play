def _version_impl(ctx):
    out = ctx.actions.declare_file("version.txt")
    print("info_file: {}".format(ctx.info_file.path))
    print("version_file: {}".format(ctx.version_file.path))
    ctx.actions.run_shell(
        inputs = [ctx.version_file] + ctx.files.deps,
        outputs = [out],
        command = "(echo -n \"{}.\"; grep BUILD_TIMESTAMP {} | sed -e 's/^BUILD_TIMESTAMP //') > {}".format(ctx.attr.version, ctx.version_file.path, out.path),
    )
    return [DefaultInfo(files = depset([out]))]

version = rule(
    implementation = _version_impl,
    attrs = {
        "version": attr.string(mandatory = True),
        "deps": attr.label_list(allow_files = True),
    },
)
