#!/bin/sh
if [[ "$OSTYPE" == "darwin"* ]]; then
  directory="$HOME/Library/Keyboard Layouts/Ilya Birman Typography Layout.bundle/Contents/Resources"
  if [ -d "$directory" ]; then
		us="$directory/English - Ilya Birman Typography.icns"
		ru="$directory/Russian - Ilya Birman Typography.icns"
		mv "$us"{,.bak}
		mv "$ru"{,.bak}
		curl -sSL https://github.com/stamm/birman_layout_normal_icons/raw/master/flag-ru.icns > "$ru"
		curl -sSL https://github.com/stamm/birman_layout_normal_icons/raw/master/flag-us.icns > "$us"
		echo 'You need to restart Mac to apply icons'
	else
		echo 'You not install Birman Typography layout'
	fi
else
  echo 'You use not mac'
fi