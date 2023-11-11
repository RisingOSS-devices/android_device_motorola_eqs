if [ -n "${CLEAN_DT_REPOS}" ]; then
    if [ "$CLEAN_DT_REPOS" = "True" ]; then
        echo "Cleaning old repos before cloning"
        rm -rf device/motorola/sm8475-common
        rm -rf device/motorola/eqs-kernel
        rm -rf vendor/motorola
        rm -rf packages/apps/PocketMode
        rm -rf hardware/motorola
        unset CLEAN_DT_REPOS
    fi
fi
echo eqs: start cloning device specific repos
COMMON_DT=device/motorola/sm8475-common/sm8475.mk
if ! [ -a $COMMON_DT ]; then git clone https://github.com/nishant6342/device_motorola_sm8475-common -b Ursamoon device/motorola/sm8475-common
fi
COMMON_VT=vendor/motorola/sm8475-common/sm8475-common-vendor.mk
if ! [ -a $COMMON_VT ]; then git clone https://github.com/nishant6342/vendor_motorola_sm8475-common -b Ursamoon vendor/motorola/sm8475-common
fi
VT=vendor/motorola/eqs/eqs-vendor.mk
if ! [ -a $VT ]; then git clone https://gitlab.com/nishant6342/vendor_motorola_eqs -b Ursamoon vendor/motorola/eqs
fi
KT=device/motorola/eqs-kernel/kernel
if ! [ -a $KT ]; then git clone --depth=1 https://github.com/nishant6342/device_motorola_eqs-kernel device/motorola/eqs-kernel
fi
HARDWARE_MOTO=hardware/motorola/lineage.dependencies
if ! [ -a $HARDWARE_MOTO ]; then git clone --depth=1 https://github.com/nishant6342/hardware_motorola -b Ursamoon hardware/motorola
fi
POCKET=packages/apps/PocketMode/pocket_mode.mk
if ! [ -a $POCKET ]; then git clone --depth=1 https://github.com/nishant6342/packages_apps_PocketMode -b UNO packages/apps/PocketMode
fi
KERNEL_SOURCE=kernel/motorola/sm8475/Makefile
if ! [ -a $KERNEL_SOURCE ]; then git clone --depth=1 https://github.com/nishant6342/android_kernel_motorola_sm8475 -b lineage-20 kernel/motorola/sm8475
fi
echo eqs: end cloning device specific repos
