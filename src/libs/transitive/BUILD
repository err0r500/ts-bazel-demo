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
    name = "transitive_ts",
    srcs = ["index.ts"],
    declaration = True,
    composite = True,
    tsconfig = "tsconfig",
    deps = [
        "@npm//@types/node",
    ],
    visibility = ["//visibility:public"],
)

js_library(
    name = "transitive",
    package_name = "@libs/transitive",
    deps = [
        "transitive_ts"
    ],
    visibility = ["//visibility:public"],
)


