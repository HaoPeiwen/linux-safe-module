TARGET = safe
obj-m := ${TARGET}ko.o
${TARGET}ko-objs := ${TARGET}.o zeroevil/zeroevil.o tools/tools.o

default:
	${MAKE} modules \
		--directory "/lib/modules/$(shell uname --release)/build" \
		M="$(shell pwd)"


clean:
	${MAKE} clean \
		--directory "/lib/modules/$(shell uname --release)/build" \
		M="$(shell pwd)"
