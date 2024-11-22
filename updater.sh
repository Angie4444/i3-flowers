#!/bin/bash

echo "SYNCING REPOSITORIES..."

`sudo emaint -a sync` 

#echo "UPGRADING GENTOO..."

sudo emerge -avuDN @world

echo "CUSTOMIZING DISCORD"
`sudo betterdiscordctl self-upgrade`
`betterdiscordctl --d-install traditional install`

echo "CUSTOMIZING SPOTIFY"
exec spicetify update

