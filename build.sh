#!/bin/bash
emmake make clean
emmake make prefix=/tmp/emscripten_root
emmake make prefix=/tmp/emscripten_root install
