_adb_rdy()
{
	[[ $(adb devices 2> /dev/null | sed -n 2p) == *"unauthorized"* ]] || [[ $(adb devices 2> /dev/null | sed -n 2p) == *"device"* ]] \
		&& echo -n '(adb rdy) '
}
