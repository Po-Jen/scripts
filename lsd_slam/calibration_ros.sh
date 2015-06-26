#This calibration process use the ROS camera_calibration package
#http://wiki.ros.org/camera_calibration/Tutorials/MonocularCalibration
roslaunch usb_cam usb_cam.launch

ROS_NAMESPACE=usb_cam rosrun image_proc image_proc

rosrun camera_calibration cameracalibrator.py --size 11x7 --square 0.019 image:=/usb_cam/image_raw camera:=/usb_cam
