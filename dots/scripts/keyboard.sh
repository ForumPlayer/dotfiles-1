#!/bin/sh

INPUT=$(qdbus "org.fcitx.Fcitx" "/inputmethod" "GetCurrentIM")
if [ $INPUT = "fcitx-keyboard-br" ]; then
	echo "PT-BR"
elif [ $INPUT = "mozc" ]; then
	echo "日本語"
fi
