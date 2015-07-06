# Setting Up Caffe For Google's Deepdream

#### Requirements
- Ubuntu 14.04 64 bit fresh VM
- a single normal user setup

## Usage
First,

`sh setup_caffe.sh`

Now, you will need to make a Makefile config

`cp Makefile.config.example Makefile.config`

And we change just a few simple things:

First we change the line

`# CPU_ONLY := 1`

to be

`CPU_ONLY := 1`

removing the comment. And in our `PYTHON_INCLUDE` line's secont argugment to include `/local/` so it should read

```
...
PYTHON_INCLUDE := /usr/include/python2.7 \
                /usr/local/lib/dist-packages/numpy/core/include
...
```

And with this, we can now build:

`sh make_caffe.sh`

And you are set up to utilize google's tutorial/notebook [here](https://github.com/google/deepdream)
