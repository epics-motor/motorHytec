## Example vxWorks startup file

## The following is needed if your board support package doesn't at boot time
## automatically cd to the directory containing its startup script
#cd "/home/oxygen40/KPETERSN/epics/motor-split/Hytec/motorHytecBlank/iocs/hytecIOC/iocBoot/iocHytec"

< cdCommands
#< ../nfsCommands

cd topbin

## You may have to change hytec to something else
## everywhere it appears in this file
ld 0,0, "hytec.munch"

## Register all support components
cd top
dbLoadDatabase "dbd/hytec.dbd"
hytec_registerRecordDeviceDriver pdbbase

## Load record instances
#dbLoadTemplate "db/hytec.substitutions"
#dbLoadRecords "db/hytec.db", "user=kpetersn"

cd startup
iocInit

## Start any sequence programs
#seq &sncxxx, "user=kpetersn"
