# Overview of Files

## `voxblox_rnm_*.launch`

Choose one of these files to start the [3D Radiation Mapper](https://git.sim.informatik.tu-darmstadt.de/hector/hector_voxblox/-/tree/radio_nuclear_mapper). It was built into Voxblox ([original repository](https://github.com/ethz-asl/voxblox)) as an extra node. Therefore, make sure that you have selected the right branches before you start.

| Repository | Branch |
|:-:|:-:|
| **voxblox** | [`radio_nuclear_mapper`](https://git.sim.informatik.tu-darmstadt.de/hector/hector_voxblox/-/tree/radio_nuclear_mapper) |
| **radiological_nuclear_mapper** | [`voxblox`](https://git.sim.informatik.tu-darmstadt.de/hector/hector_enrich/-/tree/voxblox/radiological_nuclear_mapper) |
| **hector_vehicle_launch**<br>(this repository) | [`radiological_nuclear_mapper`](https://github.com/tu-darmstadt-ros-pkg/hector_vehicle_launch/tree/radiological_nuclear_mapper)<br>(this branch) |

### Radionuclear Mapper Specific Parameters

#### `radiation_sensor_topic`
Defines the ROS topic which is used to receive the intensity values from the radiation sensor. 

**Type:** String

#### `radiation_sensor_frame_id`
Defines the ID of the frame, which describes the position at the robot arm where the sensor is mounted. 

**Type:** String

#### `radiation_max_distance`
Defines the maximum distance up to which the measured radiation intensity should be projected onto surrounding surfaces.

**Type:** Float

**Default:** max. distance value of TSDF integrator

#### `radiation_distance_function`
Defines the function which describes the change of intensity with increasing distance to the sensor during projection on surrounding surfaces. These functions are available

- `increasing`: [eq](https://latex.codecogs.com/png.latex?f%20%5Cleft%28d%5Cright%29%20%3D%20%5Cfrac1%7B%5Cleft%28d&plus;1%5Cright%29%5E2%7D)
- `decreasing`: 
- `constant`: 

**Type:** String

**Default:** `"constant"`

#### `radiation_use_logarithm`
**Type:** Boolean

**Default:** `false`

#### `radiation_msg_val_min`
Defines the smallest value that the radiation sensor measures during the run. More information about the radiation sensor extreme values see [here](#radiation-sensor-extreme-values).

**Type:** Float

**Default:** `0.0`

#### `radiation_msg_val_max`
Defines the largest value that the radiation sensor measures during the run. More information about the radiation sensor extreme values see [here](#radiation-sensor-extreme-values).

**Type:** Float

**Default:** `100000.0`

#### `radiation_bearing_vector_num`
**Type:** Integer

**Default:** `10000`

#### `radiation_colormap`
**Type:** String

**Default:** `"ironbow"`

#### `save_mesh_trigger_topic`
**Type:** String

### Radiation Sensor Extreme Values
