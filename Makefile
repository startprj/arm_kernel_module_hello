obj-m +=zspi.o  
KDIR:=/home/zhouhua/SDK/osdrv/opensource/kernel/linux-3.4.y
A=ar
ARCH=arm
CC=arm-hisiv300-linux-gcc
all:      
	make -C $(KDIR) ARCH=$(ARCH) CROSS_COMPILE=arm-hisiv300-linux- M=$(PWD)  modules  
clean:    
	make -C $(KDIR)  M=$(PWD)  clean  
