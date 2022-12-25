Changelog (Py-Bundler)
======================

0.0.5 (2022-12-21)
------------------

- ``ccache`` added, to speed up assembly when only project sources was changed.
- docker images optimizations.

0.0.4 (2022-12-20)
------------------

- Test command in docker images run now from binaries stored in artifacts
- Fixed prefix in created binaries name, was broken by 0.0.3 version update
- Renamed ``generate-binaries`` yaml files.

0.0.3 (2022-12-19)
------------------

- Nuitka updated and pinned to ``1.2.7`` version
- Python updated from `3.9.15` to `3.9.16`
- ``pynacl``, ``cryptography`` are now installed for `pymysql`
- pinned ``pg8000`` and ``pymysql`` versions
- *nc-py-api* was removed from images, it will be installed during generating binaries.
- Github Actions improvements and fixes

0.0.2 (2022-12-16)
------------------

- `bin_prefix` input parameter to workflow was removed. Now workflow takes *id* of app from *info.xml*
- *nc-py-api* was updated to `0.0.7` version

0.0.1 (2022-12-07)
------------------

- Initial release, support for [MediaDC](https://github.com/andrey18106/mediadc) application.
