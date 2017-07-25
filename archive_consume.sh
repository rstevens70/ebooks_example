#!/bin/bash
declare -a arr=("user1" "user2") #Define which users you want to use in your bot
for i in "${arr[@]}"
do
   ebooks archive $i corpus/$i.json
done
ebooks consume-all NAMEOFMODEL corpus/*.json

#If you're deploying to Heroku
# git add .
# git commit -m "ready for showtime"
# git push heroku master
# heroku run worker
