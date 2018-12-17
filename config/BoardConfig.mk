include vendor/hexagon/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/hexagon/config/BoardConfigQcom.mk
endif

include vendor/hexagon/config/BoardConfigSoong.mk
