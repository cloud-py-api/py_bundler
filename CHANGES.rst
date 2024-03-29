Changelog (Py-Bundler)
======================

0.0.7 (2023-02-02)
------------------

- Updated Nuitka to `1.3.8`
- Binaries now generated as directory and packed to archive, speed boost during startup.
- Hashes are now present for each file in archive and for archive itself.
- Updated Pillow to `9.4.0`

0.0.6 (2022-12-25)
------------------

- Added creation of `.sha256` files for binaries in artifacts.
- Alpine image moved to `3.17` version, with musl lib `1.2.3` version that in most cases compatible with Alpine `3.14`
- Python moved to `3.10.9` version(all code still should support `3.9` version of python)
- Added preinstalled `matplotlib`, `pywavelets`, `filterpy`
- Updated numpy to `1.23.4`, scipy to `1.9.3`
- Added preinstalled OpenCV `4.6.0` version.

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
