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
**Type:** String. Defines the ROS topic which is used to receive the intensity values from the radiation sensor. 

#### `radiation_sensor_frame_id`
**Type:** String. Defines the ID of the frame, which describes the position at the robot arm where the sensor is mounted. 

#### `radiation_max_distance`
**Type:** Float. **Default:** max. distance value of TSDF integrator. Defines the maximum distance up to which the measured radiation intensity should be projected onto surrounding surfaces.

#### `radiation_distance_function`
**Type:** String. **Default:** `"constant"`. Defines the function which describes the change of intensity with increasing distance to the sensor during projection on surrounding surfaces. These functions are available
| Name | String | Function |
|:-:|:-:|:-:|
| Decreasing Radiation Distance Function | `decreasing` | ![`f \left(d\right) = \frac1{\left(d+1\right)^2}`](https://latex.codecogs.com/png.latex?f%20%5Cleft%28d%5Cright%29%20%3D%20%5Cfrac1%7B%5Cleft%28d&plus;1%5Cright%29%5E2%7D) |
| Increasing Radiation Distance Function | `increasing` | ![`f \left(d\right) = {\left(d+1\right)^2}`](https://latex.codecogs.com/png.latex?f%20%5Cleft%28d%5Cright%29%20%3D%20%7B%5Cleft%28d&plus;1%5Cright%29%5E2%7D) |
| Constant Radiation Distance Function | `constant` | ![`f \left(d\right) = {1}`](https://latex.codecogs.com/png.latex?f%20%5Cleft%28d%5Cright%29%20%3D%20%7B1%7D) |

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
