#!/bin/sh

# Custom functions
# Fires-up a Jupyter notebook by supplying a specific port
function jpt(){
    jupyter notebook --no-browser --port="$1"
}
# Forwards port $1 into port $2 and listens to it from remoteuser@remotehost $3
function jptt(){
    ssh -N -f -L localhost:"$2":localhost:"$1" "$3"
}