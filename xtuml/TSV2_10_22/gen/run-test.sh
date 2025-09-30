#!/bin/bash
source build/linux-armv8-gcc-14/Release/generators/conanrun.sh
./build/linux-armv8-gcc-14/Release/bin/Timers -util MetaData -log-config log.properties -postinit schedule/Timers_BSet_scenarios.sch
