FROM williamyeh/ansible:ubuntu14.04

RUN apt-get update \
  && apt-get install -y software-properties-common \
  && add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe" \
  && apt-get clean && apt-get update \
  && apt-get install -yf python-virtualenv python-distutils-extra python-apt make git \
  && build-essential libssl-dev libffi-dev python-dev libcurl4-openssl-dev

RUN pip install https://pypi.python.org/packages/3.4/s/setuptools/setuptools-11.3.1-py2.py3-none-any.whl
