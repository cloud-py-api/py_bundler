 ## NC-App Python Bundler

This repository contains action files for building and packaging the part of the application written in python for Nextcloud.

It uses [Nuitka](https://github.com/Nuitka/Nuitka) for this.

### Versions:

Bundler version: **0.0.1**

Built-in Package Versions(it is recommended to use these pinned versions if needed):

- nc-py-api: **0.0.7**
- numpy: **1.21.4**
- pillow: **9.3.0**
- scipy: **1.7.2**

Bundled Python version: **3.9**

### Usage

Repository with your app should contain:

- requirements.txt (in the root)
- main.py (in the root)
- folder with python code, that is imported from **main.py**

Look at [py-bundler-demo](https://github.com/cloud-py-api/py_bundler-demo) as a basic example **with description**.

### Applications that uses this:

- [MediaDC](https://github.com/andrey18106/mediadc), starting from **0.3.0** version it uses this bundler.
