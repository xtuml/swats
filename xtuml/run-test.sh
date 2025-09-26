#!/bin/bash

set -e

# run deployment
# docker run --rm -it -v conan-cache:/conan-cache -v ./TSV2_10_1/gen:/work levistarrett/masl-dev:latest ./run-test.sh
docker run --rm -it -v conan-cache:/conan-cache -v ./TSV2_10_10/gen:/work levistarrett/masl-dev:latest ./run-test.sh
# docker run --rm -it -v conan-cache:/conan-cache -v ./TSV2_10_9/gen:/work levistarrett/masl-dev:latest ./run-test.sh
