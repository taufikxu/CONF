#! /usr/bin/env bash
#
which pip

pip install --upgrade pip
conda install jupyter numpy scipy scikit-learn matplotlib ipython
pip install tqdm pillow path.py coloredlogs
# pip install theano
pip install git+https://github.com/Theano/Theano.git#egg=Theano
pip install --upgrade https://github.com/Lasagne/Lasagne/archive/master.zip
