# AnyKernel2 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() {
kernel.string=Proto8 Kernel by JBolho and nutcasev1.5 @ XDA
do.devicecheck=0
do.modules=0
do.cleanup=1
do.cleanuponabort=1
device.name1=
device.name2=
} # end properties

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. /tmp/anykernel/tools/ak2-core.sh;

ui_print " ";
ui_print " ";
ui_print "     ____  ____  ____  __________   ";
ui_print "    / __ \/ __ \/ __ \/_  __/ __ \  ";
ui_print "   / /_/ / /_/ / / / / / / / / / /  ";
ui_print "  / ____/ _, _/ /_/ / / / / /_/ /   ";
ui_print " /_/   /_/ |_|\____/ /_/  \____/    ";
ui_print " ";
ui_print " ";
ui_print " ";


# shell variables
block=/dev/block/bootdevice/by-name/kernel;
ramdisk_compression=auto;

# reset for kernel patching
reset_ak;
mv /tmp/anykernel/kernel-Image.gz /tmp/anykernel/Image.gz;


## AnyKernel kernel install

ui_print "Proto8 Kernel is being installed";

split_boot;

flash_boot;

## end install