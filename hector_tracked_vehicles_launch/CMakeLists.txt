cmake_minimum_required(VERSION 3.0.2)
project(hector_tracked_vehicles_launch)

find_package(catkin REQUIRED)

catkin_add_env_hooks(50.export.hector_tracked_vehicles_launch SHELLS bash)

catkin_package()


install(DIRECTORY 
  config
  launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

