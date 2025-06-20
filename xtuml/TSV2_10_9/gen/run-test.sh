#!/bin/bash
source build/linux-armv8-gcc-14/Release/generators/conanrun.sh
./build/linux-armv8-gcc-14/Release/bin/Events_BSet_transient -util MetaData -log-config log.properties -postinit schedule/Events_BSet_scenarios.sch
