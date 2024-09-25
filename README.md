
# FII Development Utilities

FII development environment is based on docker and Conda with conda-forge
repository.

To bootstrap a development environment for FII, run the following command.

```text
$ git clone https://github.com/FirmwareCrunch/FII-dev-utils
$ cd FII-dev-utils
$ ./env_bootstrap.sh
```

The bootstrap script builds a docker image, run a container, and finally deploy
a development environment in the container with a shared directory (docker volume)
with the container localized to `~/FII-dev` on the host filesystem. This
shared directory contains a Conda Python environment with the FII python
package source code installed in develop mode.
This environment setup is useful because it allows straightforward access of
FII source code and associated python environment from your favorite host IDE
without any container configuration, while taking advantage to run the FII
development version in the container.

By default, the development environment directory is created to `~/FII-dev`. To
Change this behaviour, `DEV_DIR` must be specified.

```text
$ DEV_DIR=/path/to/dev/directory ./env_bootstrap.sh
```

To connect to the container, run the following command. At connect time, the
Conda python environment is automatically activated and the `FII` command
available.

```text
$ cd FII-dev-utils
$ make connect
docker exec -u FII -it fii-dev bash
(/opt/FII-dev/conda_env_py_3_9_2) FII@FirmwareCrunch:/opt/FII-dev$ FII -h
```
