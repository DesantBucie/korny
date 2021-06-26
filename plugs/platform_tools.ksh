_fastboot_rdy()
{     
        [[ $(fastboot devices 2> /dev/null) ]] \
		&& print -n '(fstbt rdy) '
}
_adb_rdy()
{
    [[ $(adb devices 2> /dev/null | sed -n 2p) == *"unauthorized"* ]] || [[ $(adb devices 2> /dev/null | sed -n 2p) == *"device"* ]] \
        && print -n '(adb rdy) '

}
