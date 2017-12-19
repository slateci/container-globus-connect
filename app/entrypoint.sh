#!/bin/bash

if [[ ! -e /etc/globus-connect-server.conf ]]; then
  echo "Generating globus-connect-server.conf..."
  curl -o /etc/globus-connect-server.conf https://raw.githubusercontent.com/globus/globus-connect-server/master/source/globus-connect-server.conf
fi
