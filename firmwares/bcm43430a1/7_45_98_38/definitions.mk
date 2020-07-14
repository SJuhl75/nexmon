NEXMON_CHIP=CHIP_VER_BCM43430a1
NEXMON_CHIP_NUM=`$(NEXMON_ROOT)/buildtools/scripts/getdefine.sh $(NEXMON_CHIP)`
NEXMON_FW_VERSION=FW_VER_7_45_98_38
NEXMON_FW_VERSION_NUM=`$(NEXMON_ROOT)/buildtools/scripts/getdefine.sh $(NEXMON_FW_VERSION)`

NEXMON_ARCH=armv7-m

RAM_FILE=cyfmac43430-sdio-7_45_98_38.bin
RAMSTART=0x0
RAMSIZE=0x80000

ROM_FILE=rom.bin
ROMSTART=0x800000
ROMSIZE=0xA0000

WLC_UCODE_WRITE_BL_HOOK_ADDR = 0x4A498
HNDRTE_RECLAIM_0_END_PTR = 0x2714
HNDRTE_RECLAIM_0_END = 0x5ED70

PATCHSIZE=0x2000
PATCHSTART=$$(($(HNDRTE_RECLAIM_0_END) - $(PATCHSIZE)))

# original ucode start and size
UCODESTART = 0x53D44
UCODESIZE = 0xB2A3

# original template ram start and size
TEMPLATERAMSTART_PTR = 0x53C44
TEMPLATERAMSTART = 0x5E730
TEMPLATERAMSIZE = 0x640

FP_DATA_END_PTR = 0x3E4EC
FP_CONFIG_BASE_PTR_1 = 0x3FFEC
FP_CONFIG_END_PTR_1 = 0x3ffE8
FP_CONFIG_BASE_PTR_2 = 0x40264
FP_CONFIG_END_PTR_2 = 0x40260
# can start at the end of the firmware, it will be overwritten after it is read
FP_CONFIG_BASE=0x5EE83
FP_DATA_BASE = 0x1000
FP_CONFIG_SIZE = 0xc00
FP_CONFIG_ORIGBASE = 0x1800
FP_CONFIG_ORIGEND = 0x2124
