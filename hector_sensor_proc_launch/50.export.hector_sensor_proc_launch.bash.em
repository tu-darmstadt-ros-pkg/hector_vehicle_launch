#!/bin/bash

if [ "$(type -t add_rosrs_setup_env)" == "function" ]; then
  add_rosrs_setup_env HECTOR_USE_SDF_MAPPING "true,false" "Additionally start SDF mapping (expensive)."
fi
