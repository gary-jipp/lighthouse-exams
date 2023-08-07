#! /bin/sh

pstatus=`which podman`
if [ ! -z $pstatus ] ;then
  chost='podman'
fi

if [ ! $chost ] ; then
  dstatus=`which docker`
  if [ ! -z $dstatus ] ;then
    chost='docker'
  fi
fi

if [ ! $chost ] ; then
  echo 'No Container host installed'
  echo 'Please install podman or docker and try again'
  exit
fi

echo "Using $chost:"

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
$chost pull ghcr.io/gary-jipp/student-exam:demo
cd answers
$chost run --replace --rm -d -v .:/app/answers --name student-exam student-exam

$chost exec -it student-exam start $1