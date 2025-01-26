## Bharat Forge Team-73
To run this submission, please first install the necessary dependencies by running ```bash install_dependencies.sh``` on Linux Ubuntu 22 or higher system.

Next perform the following commands
```
colcon build
source install/setup.bash
ros2 launch autobot_recog bots_launch.launch.py
```
This starts a complete autonomous system.

For master-slave system swarm architecture
```
colcon build
source install/setup.bash
ros2 launch autobot_recog master_slave.launch.py
```

To train RL models
```
cd RL
cd td3 # for TD3 or 
cd ppo # for PPO
python3 train_ppo.py # for PPO
python3 train_velodyne_node.py # for TD3
```

The dataset needs to be prepared before running the following section, so we have provided only the dummy dataset.  
To train YOLO model
```
cd object_detection
python3 training_yolo.py
```
