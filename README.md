[![Docker Stars](https://img.shields.io/docker/stars/0xnu20/docker-data-science.svg?style=flat-square)](https://hub.docker.com/r/0xnu20/docker-data-science/)
[![Docker Pulls](https://img.shields.io/docker/pulls/0xnu20/docker-data-science.svg?style=flat-square)](https://hub.docker.com/r/0xnu20/docker-data-science/)

# Docker Data Science

[Jupyter Notebook Scientific Python Stack](https://github.com/jupyter/docker-stacks/tree/master/scipy-notebook) packaged with:

* Jupyter Notebook 5.2.x
* Conda Python 3.x environment
* pandas, matplotlib, scipy, seaborn, scikit-learn, scikit-image, sympy, cython, patsy, statsmodel, cloudpickle, dill, numba, bokeh, vincent, beautifulsoup, xlrd pre-installed

The image is perfect for neural networks projects, but I've extended it with:

* [Altair](https://altair-viz.github.io/): is a declarative statistical visualization library for Python, based on Vega and Vega-Lite.
* [Dash](https://pypi.org/project/dash/): is a Python framework for building ML & data science web apps.
* [Flask](https://pypi.org/project/Flask/): is a simple framework for building complex web applications.
* [HDF5 for Python](http://www.h5py.org/): optional dependency of Keras used to save / load weights for neural networks.
* [Keras](http://keras.io/): a high-level neural networks API, written in Python and capable of running on top of TensorFlow, CNTK, or Theano. It was developed with a focus on enabling fast experimentation.
* [Requests](https://pypi.org/project/requests/): is a simple, yet elegant HTTP library.
* [TensorFlow](https://www.tensorflow.org/): open source software library for numerical computation using data flow graphs, the default backend for Keras.

### Usage

```
docker run -d -v /$(pwd)/:/home/jovyan/work \
           -p 8888:8888 0xnu20/docker-data-science start-notebook.sh --NotebookApp.token=''
```

### License

This project is licensed under the [WTFPL License](LICENSE) - see the file for details.

### Copyright

(c) 2020 [Finbarrs Oketunji](https://finbarrs.eu).