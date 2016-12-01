#!/bin/bash
#Install PIP
source ~/.bashrc
python --version
curl https://bootstrap.pypa.io/get-pip.py | python

# Install virtualenv
pip install virtualenv

# Install scrapy
pip install Scrapy

# Keep container alive
# tail -fn100 /dev/null