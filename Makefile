################################################################################
#
# Copyright 2022-2025 Vincent Dary
#
# This file is part of FII-dev-utils.
#
# FII-dev-utils is free software: you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by the Free
# Software Foundation, either version 3 of the License, or (at your option) any
# later version.
#
# FII-dev-utils is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
# details.
#
# You should have received a copy of the GNU General Public License along with
# FII-dev-utils. If not, see <https://www.gnu.org/licenses/>.
#
################################################################################

USER := FII
DOCKER_IMG_NAME := fii-dev
DOCKER_CONTAINER_NAME := $(DOCKER_IMG_NAME)

connect:
	docker exec -u $(USER) -it $(DOCKER_CONTAINER_NAME) bash

clean_docker_env:
	docker stop $(DOCKER_CONTAINER_NAME)
	docker rm $(DOCKER_CONTAINER_NAME)
	docker image rm $(DOCKER_IMG_NAME)
