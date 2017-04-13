#!/bin/bash

## TODO print all branch commits about the author as "commit list"
## TODO print the commit information about the author as "项目任务"
## TODO publish new report at thursday night
git log --since '7 days ago' --oneline --author $1 | awk 'BEGIN{FS=OFS=" "}{$1="*";print}'
