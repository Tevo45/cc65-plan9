CC=pcc

datadir=/sys/lib/cc65
bindir=/$objtype/bin

CA65_INC=$datadir/asminc
CC65_INC=$datadir/include
CL65_TGT=$datadir/target
LD65_LIB=$datadir/lib
LD65_OBJ=$datadir/lib
LD65_CFG=$datadir/cfg

# FIXME: Add git revision to build ID
BUILD_ID='Plan 9'

# I'm not sure if we should manually define __STDC_VERSION__ like that
CFLAGS=\
	-I../common	\
	-D_POSIX_SOURCE -D__STDC_VERSION__=199901L \
	-DCA65_INC=$CA65_INC	\
	-DCC65_INC=$CC65_INC	\
	-DCL65_TGT=$CL65_TGT	\
	-DLD65_LIB=$LD65_LIB	\
	-DLD65_OBJ=$LD65_OBJ	\
	-DLD65_CFG=$LD65_CFG	\
	-DBUILD_ID=$BUILD_ID
