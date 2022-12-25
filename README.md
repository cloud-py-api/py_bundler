 ## NC-App Python Bundler

This repository contains action files for building and packaging the part of the application written in python for Nextcloud.

It uses [Nuitka](https://github.com/Nuitka/Nuitka) for this.

### Versions:

Bundler version: **0.0.6**

Built-in Package Versions(it is recommended to use these pinned versions if needed):

- pillow: **9.3.0**
- numpy: **1.23.4**
- scipy: **1.9.3**
- PyWavelets: **1.4.1**
- matplotlib: **3.6.2**
- filterpy: **1.4.5**
- OpenCV: **4.6.0** (Note: on Alpine it will be not visible for PIP)

Nc-Py-API DB dependencies versions:

- cryptography: **38.0.4**
- pynacl: **1.5.0**
- pymysql: **1.0.2**
- pg8000: **1.29.4**

Bundled Python version: **3.10.9**

Nuitka version: **1.2.7**

### Usage

Repository with your app should contain:

- requirements.txt (in the root)
- main.py (in the root)
- folder with python code, that is imported from **main.py**

Look at [py-bundler-demo](https://github.com/cloud-py-api/py_bundler-demo) as a basic example **with description**.

### Applications that uses this:

- [MediaDC](https://github.com/andrey18106/mediadc), starting from **0.3.0** version it uses this bundler.
