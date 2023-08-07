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

unset pstatus

echo "Using $chost:"
$chost exec -it student-exam question $1