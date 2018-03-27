#!/usr/bin/env bash

# https://askubuntu.com/questions/77522/command-to-unmute-and-maximize-volume#336122
for x in `amixer controls  | grep layback` ; do amixer cset "${x}" on ; done
for x in `amixer controls  | grep layback` ; do amixer cset "${x}" 60% ; done

amixer set -c 0 Headphone 75 unmute

exit $!
