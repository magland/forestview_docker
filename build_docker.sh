#!/bin/bash

docker build -t magland/forestview:$(cat version) .
