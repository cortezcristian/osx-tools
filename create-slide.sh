#!/bin/bash
NEW_SLIDE=$(yo reveal:slide "$@" 2>&1 >/dev/null |tail -n 1 |awk '{ print $NF }')
echo $NEW_SLIDE
if [[ $NEW_SLIDE == *".html"* ]]; then
  HEADER=$(cat $NEW_SLIDE | head -n 1)
  echo $HEADER > $NEW_SLIDE
  cat template-slide.html >> $NEW_SLIDE
  cat $NEW_SLIDE
fi
