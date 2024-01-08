#!/bin/bash

label=""
if [ "$1" = "--label" ]; then
  shift
  label="$1"
  shift
fi

"$@"
retval=$?

if [ "0" == "$retval" ] ; then
  say "$label" successful
else
  say "$label" failed
fi

exit $retval
