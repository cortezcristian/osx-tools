#!/bin/bash
NEW_SLIDE=$(yo reveal:slide "$@" |grep html |tail -n 1 )
#echo $NEW_SLIDE
