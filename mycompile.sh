#!/bin/bash
PRO_PATH = /home/seed/Desktop/VisFuzz
export DEMO_PATH=$PRO_PATH/demo
export TOOL_PATH=$PRO_PATH/visfuzz
cd $TOOL_PATH/fuzz
mkdir build
cd build
cmake ../llvm/ .
make
export VISFUZZ_BUILD=$PRO_PATH
cd $TOOL_PATH/fuzz/afl
make

# 3. Fuzz && visualize demo:
 
cd $DEMO_PATH/re2
sh compile.sh
cd repo
mkdir in
echo a>in/seed
# nohup $TOOL_PATH/fuzz/afl/afl-fuzz -i in -o out ./app @@ &
# python $TOOL_PATH/open_file_server.py 6767

# # Open a new terminal
# cd $TOOL_PATH/visualization
# python -m http.server 8000

# 4. Open browser (*Chrome* is recommended) and visit localhost:8000
