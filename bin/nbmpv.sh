#!/bin/bash

grep 'http' | awk '{print $2;}' | xargs mpv
