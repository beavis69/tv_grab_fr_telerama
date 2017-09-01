#!/bin/bash
SOURCEID=2
grabber="tv_grab_fr_telerama"
config="/home/zubrick/.mythtv/cable.xmltv"
rm -f /tmp/tv_grab_off*.xml
for (( offset = 0; offset < 9; offset += 3 )) ; do
    "$grabber" --config-file $config --days 3 --offset $offset > /tmp/tv_grab_off$offset.xml
    mythfilldatabase --file --sourceid $SOURCEID --xmlfile /tmp/tv_grab_off$offset.xml
done
