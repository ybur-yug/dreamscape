sudo apt-get install -y \
  git \
  libprotobuf-dev \
  libleveldb-dev \
  libsnappy-dev \
  libopencv-dev \
  libhdf5-serial-dev\
  protobuf-compiler \
  gfortran \
  libjpeg62 \
  libfreeimage-dev \
  libatlas-base-dev git \
  python-dev \
  python-pip \
  libgoogle-glog-dev \
  libbz2-dev \
  libxml2-dev \
  libxslt-dev \
  libffi-dev \
  libssl-dev \
  libgflags-dev \
  liblmdb-dev \
  python-yaml \
  python-setuptools

sudo apt-get install --no-install-recommends libboost-all-dev
sudo easy_install pillow

sudo apt-get install build-essentials

sudo apt-get install linux-headers-`uname -r`

sudo apt-get install protobuf-compiler python-numpy python-scipy
sudo apt-get install libgflags-dev libgoogle-glog-dev liblmdb-dev

pip install scikit-image

cd ~
git clone https://github.com/BVLC/caffe.git
cd caffe

cat python/requirements.txt | xargs -L 1 sudo pip install

sudo ln -s /usr/include/python2.7/ /usr/local/include/python2.7
sudo ln -s /usr/local/lib/python2.7/dist-packages/numpy/core/include/numpy /usr/local/include/python2.7/numpy

# Now edit and create Makefile.config
# TODO add example that is right for this
