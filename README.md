Prerequisites:
git
(sudo apt install git)

After script is done installing everything, re-enter terminal and open nvim with "nvim"
[Enter photo of :Lazy]

After nvim installs all the scripts you might receive an error, don't mind it. 
close nvim.

re-enter envim and run command ":Mason" from within nvim, let Mason install all it needs to run smoothly.

[Enter photo of :Mason]

* Note: Each FIRST time you open up a script in a new language (python,cpp, etc) - Treesitter pluggin from within Nir-Vim
will auto install that language, alternatively you could also install it manually via running command inside Nir-Vim:
:TSInstall <lang>
for example:
:TSInstall html
:TSInstall cpp
etc.

List of languages you should install (in my opinion):
(reminder: either way the first time you open up a file in these languages the instillation will occure automatically)
bash
bass 
c
cpp
css
csv
gitcommit
gitignore
html
htmldjango
http
javascript
json
lua
markdown
php
python
query
vim
vimdoc
xml
yaml
sql


* Note: After TSInstall installs a language, you need to exit nvim and re-enter nvim.
* Note: This will only happen the first time you open up a new language, meaning it will only happen once.



