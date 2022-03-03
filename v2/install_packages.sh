#!/bin/bash

cat packages | xargs -I% tlmgr install %
