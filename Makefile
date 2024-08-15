# beRL project makefile v1.0 | 2024/08/15

##########################################
# target file
##########################################

# target file name
TAR_NAME  := eef_sample
TAR_TYPE  := eef
TARGET    := $(TAR_NAME).$(TAR_TYPE)

# source file
SRCS      := src.cpp
OBJS      := $(SRCS:.cpp=.o) $(SRCS:.cpp=.def)
DPDS      := $(SRCS:.cpp=.d)

# install dir
# DST_DIR   := ./exe

##########################################
# compiler
##########################################
CXX       := g++

##########################################
# CFLAGS
##########################################

# include dir path
INCDIR    := -I/mingw32/include -I../aviutl_exedit_sdk
OBJDIR    := ./obj

# option
LIT_EXC   := -finput-charset=utf-8 -fexec-charset=cp932
# FUNC_HID  := -fvisibility=hidden
# DEBUGS    := -g -MMD -MP
# OPT       := -O2 -flto=auto
MACHINE   := -mtune=native -march=native -msse2 -mavx2 -mfpmath=sse
CXX_VER   := 20
CXXFLAGS  := $(LIT_EXC) $(DEBUGS) $(FUNC_HID) -std=c++$(CXX_VER) -Wall -Wextra -Winit-self $(OPT) $(INCDIR)

##########################################
# LDFLAGS
##########################################
LIBDIR    :=  -L/mingw32/lib

STC_LIBS  := 
DYC_LIBS  := 

GCC_STC  := -static -lstdc++ -lgcc -lwinpthread
# MSYS_STC := -Wl,-Bstatic
# MSYS_DYC  := -Wl,-Bdynamic
# OUT_IMP   := -Wl,--out-implib,$(TARGET:.dll=.lib)
MAKE_SL   := -shared
LDFLAGS   := $(LIBDIR) $(GCC_STC) $(MSYS_STC) $(STC_LIBS) $(MSYS_DYC) $(DYC_LIBS) $(OUT_IMP) $(MAKE_SL)
EX_FLAGS  := -Wl,--dll,--enable-stdcall-fixup

##########################################
# clean
##########################################
RM        := -rm -f

##########################################
# make
##########################################
# create target file
$(TARGET): $(OBJS)
	$(CXX) -o $@ $^ $(LDFLAGS) $(EX_FLAGS)

# create object file
.cpp.o:
	$(CXX) $(CXXFLAGS) -c $< -o $@ 

install:
	install -s $(TARGET) $(DST_DIR)

# "make all"で make cleanとmakeを同時に実施。
all: clean $(OBJS) $(TARGET)

# .oファイル、実行ファイル、.dファイルを削除
.PHONY: clean
clean:
	$(RM) *.o $(TARGET) $(DPDS)
