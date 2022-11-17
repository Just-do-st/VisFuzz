#!/bin/bash
export PRO_PATH=$(cd $(dirname $0); pwd)
export DEMO_PATH=$PRO_PATH/demo
export TOOL_PATH=$PRO_PATH/visfuzz
export VISFUZZ_BUILD=$PRO_PATH

cd $TOOL_PATH/visualization
python3 -m http.server 8000