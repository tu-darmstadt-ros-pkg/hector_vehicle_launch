cmake_minimum_required(VERSION 3.0.2)
project(hector_onboard_launch)

find_package(catkin REQUIRED)

catkin_package(
    DEPENDS
    CATKIN_DEPENDS
    INCLUDE_DIRS
    LIBRARIES
)

#############
## Install ##
#############

# all install targets should use catkin DESTINATION variables
# See http://ros.org/doc/api/catkin/html/adv_user_guide/variables.html

install(DIRECTORY config launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

