# LOAD PLUGS

By default all plugins all loaded, if you want bare minimal, load only those, starting with `_`
```
for PLUG in $KORNY_FOLDER/plugs/_*
do 
    . $PLUG
done
```
Note that ibsd shell won't work with bare minimal as it uses android.ksh

Then if you want to load specific plugin you may 

`. $KORNY_FOLDER/plugs/specific_plug.ksh`

Or Make an array with multiple plugin you like to load

```
load_array=(android git_aliases)

for arr in ${load_array[@]}
do
    . $KORNY_FOLDER/plugs/$arr.ksh
done
```
