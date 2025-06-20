#!/bin/bash

set -e

export STRATUS_JAR=~/.m2/repository/org/xtuml/stratus/2.0.1-SNAPSHOT/stratus-2.0.1-SNAPSHOT-jar-with-dependencies.jar
export BPHOME=/Applications/BridgePoint.app/Contents/Eclipse

# export from BridgePoint
$BPHOME/tools/mc/bin/xtuml2masl -c -i FTE -d FTE -o ./FTE/masl -a MASL -xf
$BPHOME/tools/mc/bin/xtuml2masl -c -i RP -d RP -o ./RP/masl -a MASL -xf
$BPHOME/tools/mc/bin/xtuml2masl -c -i Events -d Events -o ./Events/masl -a MASL -xf
$BPHOME/tools/mc/bin/xtuml2masl -c -i TSV2_10_9 -p Events_BSet -o TSV2_10_9/masl -a MASL -xf

# convert ASL activities to MASL
java -jar $STRATUS_JAR -o Events/gen/masl --mod Events/masl/Events/Events.mod --asl
java -jar $STRATUS_JAR -o RP/gen/masl --mod RP/masl/RP/RP.mod --asl
java -jar $STRATUS_JAR -o FTE/gen/masl --mod FTE/masl/FTE/FTE.mod --asl
java -jar $STRATUS_JAR -o TSV2_10_9/gen/masl --domainpath RP/masl/RP:FTE/masl/FTE/:Events/masl/Events --prj TSV2_10_9/masl/Events_BSet/Events_BSet.prj --asl
mkdir -p TSV2_10_9/gen/schedule
cp TSV2_10_9/masl/Events_BSet/*.sch TSV2_10_9/gen/schedule

# build domains
docker volume create conan-cache
docker run --rm -it -v conan-cache:/conan-cache -v ./FTE/gen:/work levistarrett/masl-dev:latest conan create .
docker run --rm -it -v conan-cache:/conan-cache -v ./RP/gen:/work levistarrett/masl-dev:latest conan create .
docker run --rm -it -v conan-cache:/conan-cache -v ./Events/gen:/work levistarrett/masl-dev:latest conan create .

# build deployment
docker run --rm -it -v conan-cache:/conan-cache -v ./TSV2_10_9/gen:/work levistarrett/masl-dev:latest conan build .
