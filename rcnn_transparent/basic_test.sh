cd /home/rosfuerte/tool/caffe
echo `pwd`/IMG_0303.JPG > _temp/det_input.txt

cd /home/rosfuerte/tool/caffe/python
./detect.py --crop_mode=selective_search --pretrained_model=../models/bvlc_reference_rcnn_ilsvrc13/bvlc_reference_rcnn_ilsvrc13.caffemodel --model_def=../models/bvlc_reference_rcnn_ilsvrc13/deploy.prototxt --raw_scale=255 ../_temp/det_input.txt ../_temp/det_output.h5

cd /home/rosfuerte/tool/caffe
python show_rcnn.py
