# Setup
## Beginning
#### These instructions are for Ubuntu 15.04. YMMV on other OS's
To start, run `setup_part_1.sh`

Next, if you want to utilize the gpu (much faster) we will need to set up and install CUDA. This is not
trivially scriptable, but you can find precise directions and downloads [here](http://docs.nvidia.com/cuda/cuda-getting-started-guide-for-linux/#axzz3f2tBHDG9).

Now, `setup_part_2.sh` is good to be ran.

This will install all dependencies of caffe, and get the Makefile config ready for us. What you
should find after this runs is vi opening the makefile config we have created. On line `33`
or somewhere around there, you should see the blas settings. We will change `Atlas` to `open.`

We will also want to go to the line setting our cuda dir. It should currently look like this:

```makefile
...
# CUDA directory contains bin/ and lib/ directories that we need.
CUDA_DIR := /usr/local/cuda
# On Ubuntu 14.04, if cuda tools are installed via
# "sudo apt-get install nvidia-cuda-toolkit" then use this instead:
# CUDA_DIR := /usr
...
```

We want to uncomment the line `# CUDE_DIR := /usr`, and comment out `CUDA_DIR :=/usr/local/CUDA`

If you have any trouble with the makefile, you may need to change your cpu to not use CUDA.
You can look into the makefile config to fix this.


#### Todo: go over `CPU_ONLY` over `CUDA`

At this point we can run `setup_part_3.sh`, but it doesnt work for me. Somethings up with BLAS :(

### To be continued. I'll figure it out.
