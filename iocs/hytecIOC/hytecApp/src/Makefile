TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = hytec
# hytec.dbd will be created and installed
DBD += hytec.dbd

# hytec.dbd will be made up from these files:
hytec_DBD += base.dbd

# Include dbd files from all support applications:
#hytec_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#hytec_LIBS += xxx

# hytec_registerRecordDeviceDriver.cpp derives from hytec.dbd
hytec_SRCS += hytec_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
hytec_SRCS_DEFAULT += hytecMain.cpp
hytec_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#hytec_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
hytec_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

