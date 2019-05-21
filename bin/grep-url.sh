#!/bin/sh

# http://kinmemodoki.hatenablog.com/entry/2016/10/07/000303
grep -Eo "http(s?)://(\w|:|%|#|\$|&|\?|\(|\)|~|\.|=|\+|\-|/)+" "$@"
