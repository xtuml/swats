#!/bin/bash

set -e

# build deployment
docker run --rm -it -v conan-cache:/conan-cache -v ./TSV2_10_9/gen:/work levistarrett/masl-dev:latest ./run-test.sh
