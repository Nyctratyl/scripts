#!/bin/sh
cd /home/gasha/kod/borsdata && ./fetcher --history --company=$1 --kpi-name=$2 --latest-only --sparse
