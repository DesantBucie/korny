# LOAD PLUGS

By default only git_aliases and android are loaded. If you want to load more, just edit .kshrc and enter their filenames here:
```
set -A plugins_array -- \
android git_aliases your_plugin #<----- here Load plugins by filename
load_plugs
```
