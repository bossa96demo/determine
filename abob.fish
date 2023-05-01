#/bin/<><
set pms apt-get pkg pkg_add pkgin brew pacman dnf emerge zypper kiss
echo "your package manager located in: "
for pm in $pms
	if command -v $pm
		echo "you have $pm as your package manager"
		set abob $pm
	end
end

#???
for i in (seq (count $pms))
	if test "$pms[$i]" = "$abob"
		echo "$i is your pm-s place in my list"
	end
end
#???
#what is wrong with me??

echo "command to install vim (run as root): "

if test "$abob" = "apt-get"
	echo "apt-get vim (debian and derivatives)"
else if test "$abob" = "pkg"
	echo "pkg install vim (freebsd user)"
else if test "$abob" = "pkg_add"
	echo "pkg_add vim (he-he openbsd)"
else if test "$abob" = "pkgin"
	echo "pkgin install vim (netbsd)"
else if test "$abob" = "brew"
	echo "brew install vim (mac, probably)"
else if test "$abob" = "pacman"
	echo "pacman -S vim (arch, my beloved)"
else if test "$abob" = "dnf"
	echo "dnf install vim (fedora)"
else if test "$abob" = "emerge"
	echo "emerge vim (gentoo :o)"
else if test "$abob" = "zypper"
	echo "zypper install vim (opensuse)"
else if test "$abob" = "kiss"
	echo "kiss install vim (kiss linux :O)"
end
