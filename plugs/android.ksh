_fastboot_rdy()
{     
        [[ $(fastboot devices 2> /dev/null) != "" ]] \
		&& echo -n '(fstbt rdy) '
}
_adb_rdy()
{
    [[ $(adb devices 2> /dev/null | sed -n 2p) == *"unauthorized"* ]] || [[ $(adb devices 2> /dev/null | sed -n 2p) == *"device"* ]] \
        && echo -n '(adb rdy) '

}
