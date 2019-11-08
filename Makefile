
# ######################################################################
# Makefile
# ######################################################################

# Makefile for the project with structure as follows:
#  ```
#  .
#  ├── include
#  │   ├── All .h files are here
#  │   └── utils.h
#  ├── lib
#  │   ├── All 3rd party libraries (.a files) are here
#  │   └── crypto.a
#  ├── Makefile
#  ├── obj
#  │   ├── All .o files will be placed here
#  │   ├── main.o
#  │   └── utils.o
#  ├── README.md
#  └── src
#      ├── All .c files are here
#      ├── main.c
#      └── utils.c
#  ```

# Final target.
TARGET     = application

# Directories as described in the beginning of Makefile.
SRC_DIR    = src
INC_DIR    = include
OBJ_DIR    = obj
LIB_DIR    = lib

# Source files *.c from /src folder.
SRC = $(wildcard $(SRC_DIR)/*.c)
# From every source file becomes object file.
OBJ = $(SRC:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)

# CC is build in variable but can be changed here.
CC         = gcc
# Preprosessor flags.
CPPFLAGS  += -I$(INC_DIR)
# Compiler flags.
CFLAGS    += -Wall -ansi -pedantic
# Linker flags.
LDFLAGS   += -L$(LIB_DIR)
# 3rd party libraries.
LDLIBS    += -lm

.PHONY: all clean

# Makefile contains rules in following format:
# target: dependencies
#     system command(s)
#
# Note that lines with "system commands" are executed in shell and have
# to start with tabulator, not not with spaces.
#
# First target is created when make is executed without explicit target.
all: $(TARGET)

# Create target applicationl from our object files.
$(TARGET): $(OBJ)
	$(CC) $(LDFLAGS) $^ $(LDLIBS) -o $@

# Create object files our source files.
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

# List all targets that do not produce files. Following description is from GNU manual:
#
# A phony target is one that is not really the name of a file; rather it
# is just a name for a recipe to be executed when you make an explicit
# request. There are two reasons to use a phony target: to avoid a conflict
# with a file of the same name, and to improve performance.
.PHONY: all clean

# Cleanup object files and executable.
clean:
	rm -f $(OBJ)
	rm -f $(TARGET)
