#!/bin/bash

set -e

export STRATUS_JAR=~/.m2/repository/org/xtuml/stratus/2.0.1-SNAPSHOT/stratus-2.0.1-SNAPSHOT-jar-with-dependencies.jar
export BPHOME=/Applications/BridgePoint.app/Contents/Eclipse

# export from BridgePoint
$BPHOME/tools/mc/bin/xtuml2masl -c -i ASL_Mapping -d ASL_Mapping -o ./ASL_Mapping/masl -a MASL -xf
$BPHOME/tools/mc/bin/xtuml2masl -c -i Creation_Deletion -d Creation_Deletion -o ./Creation_Deletion/masl -a MASL -xf
$BPHOME/tools/mc/bin/xtuml2masl -c -i DomainA -d DomainA -o ./DomainA/masl -a MASL -xf
$BPHOME/tools/mc/bin/xtuml2masl -c -i DomainB -d DomainB -o ./DomainB/masl -a MASL -xf
$BPHOME/tools/mc/bin/xtuml2masl -c -i Events -d Events -o ./Events/masl -a MASL -xf
$BPHOME/tools/mc/bin/xtuml2masl -c -i Find_and_Sets -d Find_and_Sets -o ./Find_and_Sets/masl -a MASL -xf
$BPHOME/tools/mc/bin/xtuml2masl -c -i FTE -d FTE -o ./FTE/masl -a MASL -xf
$BPHOME/tools/mc/bin/xtuml2masl -c -i Function_Calls -d Function_Calls -o ./Function_Calls/masl -a MASL -xf
$BPHOME/tools/mc/bin/xtuml2masl -c -i OAIBONE -d OAIBONE -o ./OAIBONE/masl -a MASL -xf
$BPHOME/tools/mc/bin/xtuml2masl -c -i OAIBTWO -d OAIBTWO -o ./OAIBTWO/masl -a MASL -xf
$BPHOME/tools/mc/bin/xtuml2masl -c -i RP -d RP -o ./RP/masl -a MASL -xf
$BPHOME/tools/mc/bin/xtuml2masl -c -i Relationships -d Relationships -o ./Relationships/masl -a MASL -xf
$BPHOME/tools/mc/bin/xtuml2masl -c -i SBONE -d SBONE -o ./SBONE/masl -a MASL -xf
$BPHOME/tools/mc/bin/xtuml2masl -c -i SBTWO -d SBTWO -o ./SBTWO/masl -a MASL -xf
$BPHOME/tools/mc/bin/xtuml2masl -c -i Struct -d Struct -o ./Struct/masl -a MASL -xf
$BPHOME/tools/mc/bin/xtuml2masl -c -i TAGS -d TAGS -o ./TAGS/masl -a MASL -xf
$BPHOME/tools/mc/bin/xtuml2masl -c -i TT -d TT -o ./TT/masl -a MASL -xf
$BPHOME/tools/mc/bin/xtuml2masl -c -i UDT -d UDT -o ./UDT/masl -a MASL -xf
# $BPHOME/tools/mc/bin/xtuml2masl -c -i TSV2_10_9 -p Events_BSet -o TSV2_10_9/masl -a MASL -xf

# convert ASL activities to MASL
java -jar $STRATUS_JAR -o ASL_Mapping/gen/masl --mod ASL_Mapping/masl/ASL_Mapping/ASL_Mapping.mod --asl
java -jar $STRATUS_JAR -o Creation_Deletion/gen/masl --mod Creation_Deletion/masl/Creation_Deletion/Creation_Deletion.mod --asl
java -jar $STRATUS_JAR -o DomainA/gen/masl --mod DomainA/masl/DomainA/DomainA.mod --asl
java -jar $STRATUS_JAR -o DomainB/gen/masl --mod DomainB/masl/DomainB/DomainB.mod --asl
java -jar $STRATUS_JAR -o Events/gen/masl --mod Events/masl/Events/Events.mod --asl
java -jar $STRATUS_JAR -o Find_and_Sets/gen/masl --mod Find_and_Sets/masl/Find_and_Sets/Find_and_Sets.mod --asl
java -jar $STRATUS_JAR -o FTE/gen/masl --mod FTE/masl/FTE/FTE.mod --asl
java -jar $STRATUS_JAR -o Function_Calls/gen/masl --mod Function_Calls/masl/Function_Calls/Function_Calls.mod --asl
java -jar $STRATUS_JAR -o OAIBONE/gen/masl --mod OAIBONE/masl/OAIBONE/OAIBONE.mod --asl
java -jar $STRATUS_JAR -o OAIBTWO/gen/masl --mod OAIBTWO/masl/OAIBTWO/OAIBTWO.mod --asl
java -jar $STRATUS_JAR -o RP/gen/masl --mod RP/masl/RP/RP.mod --asl
java -jar $STRATUS_JAR -o Relationships/gen/masl --mod Relationships/masl/Relationships/Relationships.mod --asl
java -jar $STRATUS_JAR -o SBONE/gen/masl --mod SBONE/masl/SBONE/SBONE.mod --asl
java -jar $STRATUS_JAR -o SBTWO/gen/masl --mod SBTWO/masl/SBTWO/SBTWO.mod --asl
java -jar $STRATUS_JAR -o Struct/gen/masl --mod Struct/masl/Struct/Struct.mod --asl
java -jar $STRATUS_JAR -o TAGS/gen/masl --mod TAGS/masl/TAGS/TAGS.mod --asl
java -jar $STRATUS_JAR -o TT/gen/masl --mod TT/masl/TT/TT.mod --asl
java -jar $STRATUS_JAR -o UDT/gen/masl --mod UDT/masl/UDT/UDT.mod --asl
# java -jar $STRATUS_JAR -o TSV2_10_9/gen/masl --domainpath RP/masl/RP:FTE/masl/FTE/:Events/masl/Events --prj TSV2_10_9/masl/Events_BSet/Events_BSet.prj --asl
# mkdir -p TSV2_10_9/gen/schedule
# cp TSV2_10_9/masl/Events_BSet/*.sch TSV2_10_9/gen/schedule

# build domains
docker volume create conan-cache
docker run --rm -it -v conan-cache:/conan-cache -v ./ASL_Mapping/gen:/work levistarrett/masl-dev:latest conan create .
docker run --rm -it -v conan-cache:/conan-cache -v ./Creation_Deletion/gen:/work levistarrett/masl-dev:latest conan create .
docker run --rm -it -v conan-cache:/conan-cache -v ./DomainA/gen:/work levistarrett/masl-dev:latest conan create .
docker run --rm -it -v conan-cache:/conan-cache -v ./DomainB/gen:/work levistarrett/masl-dev:latest conan create .
docker run --rm -it -v conan-cache:/conan-cache -v ./Events/gen:/work levistarrett/masl-dev:latest conan create .
docker run --rm -it -v conan-cache:/conan-cache -v ./Find_and_Sets/gen:/work levistarrett/masl-dev:latest conan create .
docker run --rm -it -v conan-cache:/conan-cache -v ./FTE/gen:/work levistarrett/masl-dev:latest conan create .
docker run --rm -it -v conan-cache:/conan-cache -v ./Function_Calls/gen:/work levistarrett/masl-dev:latest conan create .
docker run --rm -it -v conan-cache:/conan-cache -v ./OAIBONE/gen:/work levistarrett/masl-dev:latest conan create .
docker run --rm -it -v conan-cache:/conan-cache -v ./OAIBTWO/gen:/work levistarrett/masl-dev:latest conan create .
docker run --rm -it -v conan-cache:/conan-cache -v ./RP/gen:/work levistarrett/masl-dev:latest conan create .
docker run --rm -it -v conan-cache:/conan-cache -v ./Relationships/gen:/work levistarrett/masl-dev:latest conan create .
docker run --rm -it -v conan-cache:/conan-cache -v ./SBONE/gen:/work levistarrett/masl-dev:latest conan create .
docker run --rm -it -v conan-cache:/conan-cache -v ./SBTWO/gen:/work levistarrett/masl-dev:latest conan create .
docker run --rm -it -v conan-cache:/conan-cache -v ./Struct/gen:/work levistarrett/masl-dev:latest conan create .
docker run --rm -it -v conan-cache:/conan-cache -v ./TAGS/gen:/work levistarrett/masl-dev:latest conan create .
docker run --rm -it -v conan-cache:/conan-cache -v ./TT/gen:/work levistarrett/masl-dev:latest conan create .
docker run --rm -it -v conan-cache:/conan-cache -v ./UDT/gen:/work levistarrett/masl-dev:latest conan create .

# build deployment
# docker run --rm -it -v conan-cache:/conan-cache -v ./TSV2_10_9/gen:/work levistarrett/masl-dev:latest conan build .
