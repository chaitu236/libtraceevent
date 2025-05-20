#!/bin/bash
emmake make clean
emmake make prefix=/tmp/emscripten_root pkgconfig_dir=/tmp/emscripten_root/usr/share/pkgconfig
emmake make prefix=/tmp/emscripten_root pkgconfig_dir=/tmp/emscripten_root/usr/share/pkgconfig install
