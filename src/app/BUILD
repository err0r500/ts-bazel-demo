load("@npm//@bazel/typescript:index.bzl", "ts_config", "ts_project")
load("@build_bazel_rules_nodejs//:index.bzl", "nodejs_binary")

ts_config(
    name = "tsconfig",
    src = "tsconfig.json",
    deps = [
        "//:tsconfig",
        "//src/libs/direct:tsconfig",
    ],
)

ts_project(
    name = "server_lib",
    srcs = glob(["*.ts"]),
    composite = True,
    declaration = True,
    tsconfig = "tsconfig",
    deps = [
        "@npm//koa",
        "@npm//koa-router",
        "@npm//@types/node",
        "@npm//@types/koa",
        "@npm//@types/koa-router",
        "//src/libs/direct",
    ],
)

nodejs_binary(
    name = "app",
    data = [
        "server_lib",
    ],
    entry_point = "index.ts",
)
