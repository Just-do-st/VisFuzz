#!/bin/bash
export PRO_PATH=$(cd $(dirname $0); pwd)
export DEMO_PATH=$PRO_PATH/demo
export TOOL_PATH=$PRO_PATH/visfuzz
export VISFUZZ_BUILD=$PRO_PATH

cd $DEMO_PATH/re2
cd repo

nohup $TOOL_PATH/fuzz/afl/afl-fuzz -i in -o out ./app @@ &
python3 $TOOL_PATH/open_file_server.py 6767
