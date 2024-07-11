#!/bin/bash

languages=("bash" "bass" "c" "cpp" "css" "csv" "gitcommit" "gitignore" "html" "htmldjango" "http" "javascript" "json" "lua" "markdown" "php" "python" "query" "vim" "vimdoc" "xml" "yaml" "sql")

timeout 10 nvim --headless << EOF
for lang in "${languages[@]}"
do
  execute ":TSInstall " . a:lang
end
quitall!
EOF

if [ $? -ne 0 ]; then
  echo "Error: nvim process exited with non-zero status code"
fi

