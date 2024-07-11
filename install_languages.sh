#!/bin/bash

# Define the list of languages
languages=(
  "bash"
  "bass"
  "c"
  "cpp"
  "css"
  "csv"
  "gitcommit"
  "gitignore"
  "html"
  "htmldjango"
  "http"
  "javascript"
  "json"
  "lua"
  "markdown"
  "php"
  "python"
  "query"
  "vim"
  "vimdoc"
  "xml"
  "yaml"
  "sql"
)

# Create a command string to install all languages
cmd=""

for lang in "${languages[@]}"; do
  cmd+=":TSInstall $lang | "
done

# Remove the trailing separator and add the quit command
cmd="${cmd% | } +qa"

# Open Neovim and run the commands
nvim +"$cmd"

