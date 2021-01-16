#!/bin/bash

paths=(
	"/Users/$USER/Library/Developer/Xcode/DerivedData"
	"/Users/$USER/Library/Developer/CoreSimulator/Devices"
	"/Users/$USER/Library/Developer/Xcode/iOS DeviceSupport"
)

cmd="rm -rf"

for path in "${paths[@]}"
do
	# echo "${path}"
	executed_cmd="${cmd} ${path}"
	if [ -e "$path" ]
	then
		echo $executed_cmd
		${executed_cmd}
	else
		echo "${path} 不存在"
	fi
done

echo "清理完成"
