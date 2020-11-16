include ../config.mak                        # paths
include $(SRCDIR)/Make.conf                  # compiler paths and flags
include $(SRCDIR)/Makefile.common            # build rules

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/localmem-tests

PROGS := vla \
         minprintf \
         dprintf \
         addr_taken \
         alloca

PROGS_PREFIX := #fpext \
                #fptrunc \
                #fpcmp \
                #fptoui \
                #basedon \
                #the following programs are non-bisimilar and so do not work currently
                #barthe \
                #loop_unswitching \
                #peeling \
                #soft_pipe \
                #splitting \
                #tiling
                ##lookuptable # reading from RODATA is not supported


include $(SRCDIR)/Makefile.template
