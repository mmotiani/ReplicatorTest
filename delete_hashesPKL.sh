#!/bin/bash

find /srv/node -name "*.pkl" | wc -l
find /srv/node/ -name "*.pkl" -exec rm -f {} \;
find /srv/node -name "*.pkl" | wc -l
