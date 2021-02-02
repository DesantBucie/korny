OpenBSD pdksh is cool, but it won't work, exporting is different, coloring prompt is different and many things are different.

I could waste time to make separate version or even try to make this compatible, but instead i can ask you to install right version;

As you may know ksh is little bit dead from 2012, there were some updates in 2020, but i saw this guy maintaining the [shell](https://github.com/ksh93/ksh).

I did compiled it succesfully on OpenBSD in around 5-10 minutes. You simply install it, by copying ksh from arch/bin to lets say /usr/local/bin. Now, my advice to you is to rename binary kshm or something that isn't "ksh" or "ksh93", because you will get errors.

If you don't want to mess with all this, which is really simple btw, you can try [ohmyksh](https://github.com/qbit/ohmyksh), which I never did.
