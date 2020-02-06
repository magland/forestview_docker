# forestview_docker

Docker server for visualizing ephys data

Right now, there are no ephys visualization -- just a directory listing. This is just a test to make sure things are set up properly.

## Instructions for users

### Prerequisites

Linux and Docker

### Step 1. Clone this repository

```
git clone https://github.com/magland/forestview_docker
cd forestview_docker
```

Subsequently, for updates:

```
cd forestview_docker
git pull
```

### Step 2. Set the environment variables

The following lines can go into your ~/.bashrc file or wherever environment variables are set.

```
export FORESTVIEW_PORT=8080 # Or whatever port you want to use
export KACHERY_STORAGE_DIR=/directory/on/your/machine/for/storing/large/temporary/files
export FORESTVIEW_DATA_DIR=/directory/where/your/ephys/data/lives
```

$FORESTVIEW_PORT is the port you will connect to from your web browser

$KACHERY_STORAGE_DIR is a directory where the system will store large temporary files. 

$FORESTVIEW_DATA_DIR is a directory where your ephys data are located.


### Step 3. Run the docker image / server

```
./run_docker.sh
```

Wait until the image downloads from dockerhub and you should see a "Server running." message.

### Step 4. Connect via web browser

Open Google Chrome and enter the following URL (The 8080 should be consistent with $FORESTVIEW_PORT):

```
http://localhost:8080/app/directoryview?path=/data
```

If everything worked, you should see a listing of the contents of the $FORESTVIEW_DATA_DIR
