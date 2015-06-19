# Under Groovy
# LSD SLAM under Fuerte

roslaunch usb_cam usb_cam.launch

rosrun get_image color_to_gray_node

cd /home/rosfuerte/project/ros/lsd_slam/lsd_slam_core/bin
./live_slam image:=/usb_cam/image_raw _calib:=/home/rosfuerte/project/ros/lsd_slam/lsd_slam_core/calib/ricky_cam.cfg

cd /home/rosfuerte/project/ros/lsd_slam/lsd_slam_viewer/bin
./viewer
