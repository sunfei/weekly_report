!/bin/bash

## TODO publish new report at thursday night

rm log.txt

echo "\n# 北京影像技术研发周报" > log.txt
echo "\n## android研发" >> log.txt

git log --since '7 days ago' --oneline --author $1 | awk 'BEGIN{FS=OFS=" "}{$1="*";print}' | grep -v Merge | uniq >> log.txt

## sort log.txt | uniq > log_temp.txt

git log --since '7 days ago' --author $1 | grep "^\ " | grep -v Signed-off-by: | grep -v Merge | grep -v "\[" | uniq > ./log_temp.txt

echo "\n\n## 项目任务" >> log.txt

sort log_temp.txt | sed "s/^[ \t]*//g" | uniq | grep -v http:// >> log.txt

rm log_temp.txt

cat log.txt | while read line
do
    echo $line
done
