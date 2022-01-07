#!/bin/sh
fish -c "df -h | awk '{if ($6 == \"/\") print \"Disk space: \" $4}'"
