cmd_scripts/kconfig/lxdialog/inputbox.o := gcc -Wp,-MD,scripts/kconfig/lxdialog/.inputbox.o.d    -DCURSES_LOC="<ncurses.h>" -DLOCALE    -c -o scripts/kconfig/lxdialog/inputbox.o scripts/kconfig/lxdialog/inputbox.c

deps_scripts/kconfig/lxdialog/inputbox.o := \
  scripts/kconfig/lxdialog/inputbox.c \
  scripts/kconfig/lxdialog/dialog.h \
  /usr/include/sys/types.h \
  /usr/include/sys/appleapiopts.h \
  /usr/include/sys/cdefs.h \
    $(wildcard include/config/bit/inode.h) \
  /usr/include/sys/_symbol_aliasing.h \
  /usr/include/sys/_posix_availability.h \
  /usr/include/machine/types.h \
  /usr/include/i386/types.h \
  /usr/include/i386/_types.h \
  /usr/include/sys/_types/_int8_t.h \
  /usr/include/sys/_types/_int16_t.h \
  /usr/include/sys/_types/_int32_t.h \
  /usr/include/sys/_types/_int64_t.h \
  /usr/include/sys/_types/_intptr_t.h \
  /usr/include/sys/_types/_uintptr_t.h \
  /usr/include/sys/_types.h \
  /usr/include/machine/_types.h \
  /usr/include/sys/_pthread/_pthread_types.h \
  /usr/include/machine/endian.h \
  /usr/include/i386/endian.h \
  /usr/include/sys/_endian.h \
  /usr/include/libkern/_OSByteOrder.h \
  /usr/include/libkern/i386/_OSByteOrder.h \
  /usr/include/sys/_types/_dev_t.h \
  /usr/include/sys/_types/_blkcnt_t.h \
  /usr/include/sys/_types/_blksize_t.h \
  /usr/include/sys/_types/_gid_t.h \
  /usr/include/sys/_types/_in_addr_t.h \
  /usr/include/sys/_types/_in_port_t.h \
  /usr/include/sys/_types/_ino_t.h \
  /usr/include/sys/_types/_ino64_t.h \
  /usr/include/sys/_types/_key_t.h \
  /usr/include/sys/_types/_mode_t.h \
  /usr/include/sys/_types/_nlink_t.h \
  /usr/include/sys/_types/_id_t.h \
  /usr/include/sys/_types/_pid_t.h \
  /usr/include/sys/_types/_off_t.h \
  /usr/include/sys/_types/_uid_t.h \
  /usr/include/sys/_types/_clock_t.h \
  /usr/include/sys/_types/_size_t.h \
  /usr/include/sys/_types/_ssize_t.h \
  /usr/include/sys/_types/_time_t.h \
  /usr/include/sys/_types/_useconds_t.h \
  /usr/include/sys/_types/_suseconds_t.h \
  /usr/include/sys/_types/_rsize_t.h \
  /usr/include/sys/_types/_errno_t.h \
  /usr/include/sys/_types/_fd_def.h \
  /usr/include/sys/_types/_fd_setsize.h \
  /usr/include/sys/_types/_fd_set.h \
  /usr/include/sys/_types/_fd_clr.h \
  /usr/include/sys/_types/_fd_zero.h \
  /usr/include/sys/_types/_fd_isset.h \
  /usr/include/sys/_types/_fd_copy.h \
  /usr/include/sys/_pthread/_pthread_attr_t.h \
  /usr/include/sys/_pthread/_pthread_cond_t.h \
  /usr/include/sys/_pthread/_pthread_condattr_t.h \
  /usr/include/sys/_pthread/_pthread_mutex_t.h \
  /usr/include/sys/_pthread/_pthread_mutexattr_t.h \
  /usr/include/sys/_pthread/_pthread_once_t.h \
  /usr/include/sys/_pthread/_pthread_rwlock_t.h \
  /usr/include/sys/_pthread/_pthread_rwlockattr_t.h \
  /usr/include/sys/_pthread/_pthread_t.h \
  /usr/include/sys/_pthread/_pthread_key_t.h \
  /usr/include/sys/_types/_fsblkcnt_t.h \
  /usr/include/sys/_types/_fsfilcnt_t.h \
  /usr/include/fcntl.h \
  /usr/include/sys/fcntl.h \
  /usr/include/Availability.h \
  /usr/include/AvailabilityInternal.h \
  /usr/include/sys/_types/_o_sync.h \
  /usr/include/sys/_types/_o_dsync.h \
  /usr/include/sys/_types/_seek_set.h \
  /usr/include/sys/_types/_s_ifmt.h \
  /usr/include/sys/_types/_timespec.h \
  /usr/include/sys/_types/_filesec_t.h \
  /usr/include/unistd.h \
  /usr/include/_types.h \
  /usr/include/sys/unistd.h \
  /usr/include/sys/_types/_posix_vdisable.h \
  /usr/include/_types/_uint64_t.h \
  /usr/include/sys/_types/_null.h \
  /usr/include/sys/select.h \
  /usr/include/sys/_types/_timeval.h \
  /usr/include/sys/_types/_sigset_t.h \
  /usr/include/sys/_select.h \
  /usr/include/sys/_types/_uuid_t.h \
  /usr/include/gethostuuid.h \
  /usr/include/ctype.h \
    $(wildcard include/config/pe/inline/.h) \
    $(wildcard include/config/ii.h) \
    $(wildcard include/config/ended/locales/.h) \
  /usr/include/runetype.h \
  /usr/include/sys/_types/_ct_rune_t.h \
  /usr/include/sys/_types/_rune_t.h \
  /usr/include/sys/_types/_wchar_t.h \
  /usr/include/sys/_types/_wint_t.h \
  /usr/include/stdlib.h \
  /usr/include/sys/wait.h \
  /usr/include/sys/signal.h \
  /usr/include/machine/signal.h \
  /usr/include/i386/signal.h \
  /usr/include/machine/_mcontext.h \
  /usr/include/i386/_mcontext.h \
  /usr/include/mach/i386/_structs.h \
  /usr/include/sys/_types/_sigaltstack.h \
  /usr/include/sys/_types/_ucontext.h \
  /usr/include/sys/resource.h \
  /Library/Developer/CommandLineTools/usr/bin/../lib/clang/6.0/include/stdint.h \
  /usr/include/stdint.h \
  /usr/include/_types/_uint8_t.h \
  /usr/include/_types/_uint16_t.h \
  /usr/include/_types/_uint32_t.h \
  /usr/include/_types/_intmax_t.h \
  /usr/include/_types/_uintmax_t.h \
  /usr/include/alloca.h \
  /usr/include/string.h \
  /usr/include/strings.h \
  /usr/include/secure/_string.h \
    $(wildcard include/config/tify/level.h) \
  /usr/include/secure/_common.h \
  /usr/include/ncurses.h \
    $(wildcard include/config/sion.h) \
    $(wildcard include/config/stdbool/h.h) \
    $(wildcard include/config/k.h) \
    $(wildcard include/config/ition.h) \
    $(wildcard include/config/nts.h) \
  /usr/include/ncurses_dll.h \
  /usr/include/stdio.h \
  /usr/include/sys/_types/_va_list.h \
  /usr/include/sys/stdio.h \
  /usr/include/secure/_stdio.h \
  /usr/include/unctrl.h \
  /Library/Developer/CommandLineTools/usr/bin/../lib/clang/6.0/include/stdarg.h \
  /Library/Developer/CommandLineTools/usr/bin/../lib/clang/6.0/include/stdbool.h \

scripts/kconfig/lxdialog/inputbox.o: $(deps_scripts/kconfig/lxdialog/inputbox.o)

$(deps_scripts/kconfig/lxdialog/inputbox.o):
