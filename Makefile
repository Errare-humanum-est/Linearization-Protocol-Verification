TARGET = VIW

MURPHIPATH = $PATH
INCLUDEPATH = ${MURPHIPATH}/include
SRCPATH = ${MURPHIPATH}/src
CFLAGS = -O2

all: ${TARGET}

${TARGET}: ${TARGET}.cpp
	g++ ${CFLAGS} -o ${TARGET} ${TARGET}.cpp -I${INCLUDEPATH}

${TARGET}.cpp: ${TARGET}.m
	${SRCPATH}/mu ${TARGET}.m

.PHONY: clean
clean:
	-rm ${TARGET} *.cpp
