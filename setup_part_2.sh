# BLAS stuff
sudo apt-get install gfortran
git clone https://github.com/xianyi/OpenBLAS
cd OpenBLAS
make FC=gfortran
sudo make PREFIX=/opt/openblas install

# More dependencies
sudo apt-get install libopenblas-base libatlas3gf-base
sudo apt-get install libboost-all-dev

# When it hits here youre prompted to set blas choice
sudo update-alternatives --config libblas.so.3
sudo apt-get -y install libopencv-dev build-essential cmake git libgtk2.0-dev pkg-config python-dev python-numpy libdc1394-22 libdc1394-22-dev libjpeg-dev libpng12-dev libtiff5-dev:i386 libtiff5-dev libjasper-dev libavcodec-dev libavformat-dev libswscale-dev libxine2-bin libxine2-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev libtbb-dev libqt4-dev libfaac-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils unzip
sudo apt-get install libgoogle-glog-dev protobuf-compiler libgflags-dev

# Time to actually install caffe
git clone https://github.com/BVLC/caffe.git
cd caffe
cp Makefile.config.example Makefile.config
vi Makefile.config
