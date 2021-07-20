#!/bin/bash
NUMBER=$(($RANDOM % 23))

for ((run=1; run <= NUMBER + 1; run++))
do
  echo `/usr/games/fortune` > ~/projects/fake_commit/recruiter-test/file.txt
  /usr/bin/git -C ~/projects/fake_commit/recruiter-test/ add . -A
  /usr/bin/git -C ~/projects/fake_commit/recruiter-test/ commit -m "`/usr/games/fortune -sn 32`"
done

cd ~/projects/fake_commit/recruiter-test/
git push origin master
