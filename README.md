 ## NC-App Python Bundler

This repository contains action files for building and packaging the part of the application written in python for Nextcloud.

### Versions:

Bundler version: **0.0.1**

Packages versions:

- nc-py-api: **0.0.6**

### Usage

Repository with your app should contain:

- requirements.txt (in the root)
- main.py (in the root, _structure of this file is in development..._)
- folder with python code, that is imported from **main.py**

As an example you could look at MediaDC, starting from **0.3.0** version it uses this bundler.

_**More info will be added a little later, after the end of the design stage.**_
