#!/usr/bin/env bash

## run (only once) processes which spawn with the same name
function run {
   if (command -v $1 && ! pgrep $1); then
     $@&
   fi
}

run nm-applet
run pa-applet
run blueman-applet
run flameshot
run onboard
