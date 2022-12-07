 ## NC-App Python Bundler

This repository contains action files for building and packaging the part of the application written in python for Nextcloud.

It uses [Nuitka](https://github.com/Nuitka/Nuitka) for this.

### Versions:

Bundler version: **0.0.1**

Built-in Package Versions(it is recommended to use these pinned versions if needed):

- nc-py-api: **0.0.6**
- numpy: **1.21.4**
- pillow: **9.3.0**
- scipy: **1.7.2**

### Usage

Repository with your app should contain:

- requirements.txt (in the root)
- main.py (in the root)
- folder with python code, that is imported from **main.py**

After that you should copy two small **yaml** files(_**generate-binaries/publish-release.yml**_) **from examples** to your repo.

After that when you call `generate-binaries.yml` it will first install & build all python libraries from `requirements.txt`
and after that starts **Nuitka** to make one file standalone build.
At the end, it will create(or update) a GitHub release with produced binaries.

The whole thing is split into two yaml files because it can take a very long time.

You should modify second yml file(`publish-release`) according to your project, add the other stuff you needed.

### Examples of using

As an example you could look at [MediaDC](https://github.com/andrey18106/mediadc), starting from **0.3.0** version it uses this bundler.

You can also take a look at [py-bundler-usage-demo](https://github.com/cloud_py_api/py-bundler-usage-demo) as a basic example.
