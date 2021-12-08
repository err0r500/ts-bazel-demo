load("@npm//@bazel/typescript:index.bzl", "ts_config", "ts_project")
load("@build_bazel_rules_nodejs//:index.bzl", "js_library")

ts_config(
    name = "tsconfig",
    src = "tsconfig.json",
    deps = [
        "//:tsconfig.json",
    ],
    visibility = ["//visibility:public"],
)

ts_project(
    name = "direct_ts",
    srcs = ["index.ts"],
    composite = True,
    declaration = True,
    tsconfig = "tsconfig",
    deps = [
        "@npm//@types/node",
        "//src/libs/transitive",
    ],
)

js_library(
    name = "direct",
    package_name = "@libs/direct",
    deps = [
        "direct_ts",
        "tsconfig",
    ],
    visibility = ["//visibility:public"],
)


