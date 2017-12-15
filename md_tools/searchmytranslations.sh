#!/bin/bash

grep  -r 'lucaberton.html' * | awk -F\: '{ print $1}' | sed -e 's/index.md//g' -e 's/.md//g'
