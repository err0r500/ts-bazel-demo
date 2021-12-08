PHONY: startRemoteCache
startRemoteCache:
	docker run -u 1000:1000 -v /tmp/bazel-cache:/data -p 9092:9092 buchgr/bazel-remote-cache --experimental_remote_asset_api=true --max_size=5

PHONY: build
build:
	bazel build //... --remote_cache=grpc://localhost:9092 --experimental_remote_downloader=grpc://localhost:9092

PHONY: run
run:
	bazel run //src/app
