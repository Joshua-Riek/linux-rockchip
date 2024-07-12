ifeq ($(CONFIG_PLATFORM_SPACEMIT), y)
EXTRA_CFLAGS += -DCONFIG_LITTLE_ENDIAN
EXTRA_CFLAGS += -DCONFIG_PLATFORM_SPACEMIT
EXTRA_CFLAGS += -DCONFIG_IOCTL_CFG80211 -DRTW_USE_CFG80211_STA_EVENT
EXTRA_CFLAGS += -DCONFIG_RADIO_WORK
#EXTRA_CFLAGS += -DCONFIG_CONCURRENT_MODE
ifeq ($(shell test $(CONFIG_RTW_ANDROID) -ge 11; echo $$?), 0)
EXTRA_CFLAGS += -DCONFIG_IFACE_NUMBER=2
#EXTRA_CFLAGS += -DCONFIG_SEL_P2P_IFACE=1
endif

ARCH := riscv
#CROSS_COMPILE=/home/wanlong/workspace/k1x/output/toolchain/bin/riscv64-unknown-linux-gnu-
#KSRC=/home/wanlong/workspace/k1x/linux-6.1

ifeq ($(CONFIG_SDIO_HCI), y)
_PLATFORM_FILES = platform/platform_spacemit_sdio.o
endif
endif
