#!/bin/bash

# You must set the following environment variables
#     FORESTVIEW_PORT
#     KACHERY_STORAGE_DIR
#     FORESTVIEW_DATA_DIR

if [[ -z "$FORESTVIEW_PORT" ]]; then
    echo "Environment variable not set: FORESTVIEW_PORT" 1>&2
    exit 1
fi

if [[ -z "$KACHERY_STORAGE_DIR" ]]; then
    echo "Environment variable not set: KACHERY_STORAGE_DIR" 1>&2
    exit 1
fi

if [[ -z "$FORESTVIEW_DATA_DIR" ]]; then
    echo "Environment variable not set: FORESTVIEW_DATA_DIR" 1>&2
    exit 1
fi

docker run -v $KACHERY_STORAGE_DIR:/kachery-storage -v $FORESTVIEW_DATA_DIR:/data -p $FORESTVIEW_PORT:8080 -it magland/forestview:$(cat version)