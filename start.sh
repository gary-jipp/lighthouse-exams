#! /bin/sh

if [ ! -d "./answers" ];  then
  echo "Unable to find ./answers."
  echo  "Did you forget to cd into the cloned dir?"
  exit
fi

count=`ls -1 answers/*.js answers/*.sql 2>/dev/null | wc -l`
if [ $count -gt 0 ];  then
  echo "Files already exist in ./answers"
  echo "Delete or Move these files before starting this exam"
  exit
fi

unset count
podman pull ghcr.io/gary-jipp/student-exam:latest
cd answers
podman run --replace --rm -d -v .:/app/answers --name student-exam student-exam

podman exec -it student-exam start $1