#!/bin/bash

if [ "$(type -t add_rosrs_setup_env)" == "function" ]; then
  add_rosrs_setup_env HECTOR_ELEVATION_MAPPING_FUSE_RGBD "true,false" "Fuse RGBD camera data into elevation map (expensive)" 
fi
