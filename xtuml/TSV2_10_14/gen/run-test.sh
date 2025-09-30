#!/bin/bash
source build/linux-armv8-gcc-14/Release/generators/conanrun.sh
./build/linux-armv8-gcc-14/Release/bin/Tags_BSet_transient -util MetaData -log-config log.properties -postinit schedule/Tags_BSet_scenarios.sch
