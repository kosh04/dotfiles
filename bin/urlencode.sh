#!/bin/sh
perl -MURI::Escape -lne 'print uri_escape($_)'
