rm -rf ~/.korny

rm -rf .kshrc

if [ -x .kshrc_bak ]; then
	mv .kshrc_bak .kshrc
fi