#!/bin/bash

if [ ! -d src-gen ]; then
    mkdir src-gen
fi

export PATH=$PATH:$PWD/node_modules/.bin

grpc_tools_node_protoc \
--js_out=import_style=commonjs,binary:./src-gen/ \
--grpc_out=./src-gen/ \
--plugin=protoc-gen-grpc=`which grpc_tools_node_protoc_plugin` ./protos/*.proto