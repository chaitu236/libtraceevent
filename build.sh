#!/bin/bash

set -e

PREFIX=${PREFIX:-/tmp/emscripten_root}
HOST_INCLUDE=${HOST_INCLUDE:-/usr/include}
HOST_ARCH_INCLUDE=${HOST_ARCH_INCLUDE:-"$HOST_INCLUDE/$(gcc -print-multiarch)"}
UAPI_INCLUDES="-idirafter $HOST_INCLUDE -idirafter $HOST_ARCH_INCLUDE"
export EMCC_CFLAGS="${EMCC_CFLAGS:+$EMCC_CFLAGS }-pthread"
make_args=(
	prefix="$PREFIX"
	pkgconfig_dir="$PREFIX/usr/share/pkgconfig"
	CONFIG_INCLUDES="$UAPI_INCLUDES"
	WASM=1
)

emmake make clean
emmake make "${make_args[@]}"
emmake make "${make_args[@]}" install
