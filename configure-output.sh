root@pg1:/tmp/postgres-xl-9.5r1.3# ./configure
checking build system type... x86_64-pc-linux-gnu
checking host system type... x86_64-pc-linux-gnu
checking which template to use... linux
checking whether to build with 64-bit integer date/time support... yes
checking whether NLS is wanted... no
checking for default port number... 5432
checking for block size... 8kB
checking for segment size... 1GB
checking for WAL block size... 8kB
checking for WAL segment size... 16MB
checking for gcc... gcc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether gcc accepts -g... yes
checking for gcc option to accept ISO C89... none needed
checking whether gcc supports -Wdeclaration-after-statement... yes
checking whether gcc supports -Wendif-labels... yes
checking whether gcc supports -Wmissing-format-attribute... yes
checking whether gcc supports -Wformat-security... yes
checking whether gcc supports -fno-strict-aliasing... yes
checking whether gcc supports -fwrapv... yes
checking whether gcc supports -fexcess-precision=standard... yes
checking whether gcc supports -funroll-loops... yes
checking whether gcc supports -ftree-vectorize... yes
checking whether gcc supports -Wunused-command-line-argument... no
checking whether the C compiler still works... yes
checking how to run the C preprocessor... gcc -E
checking allow thread-safe client libraries... yes
checking whether to build with Tcl... no
checking whether to build Perl modules... no
checking whether to build Python modules... no
checking whether to build with GSSAPI support... no
checking whether to build with PAM support... no
checking whether to build with LDAP support... no
checking whether to build with Bonjour support... no
checking whether to build with OpenSSL support... no
checking whether to build with SELinux support... no
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking for ld used by GCC... /usr/bin/ld
checking if the linker (/usr/bin/ld) is GNU ld... yes
checking for ranlib... ranlib
checking for strip... strip
checking whether it is possible to strip libraries... yes
checking for ar... ar
checking for a BSD-compatible install... /usr/bin/install -c
checking for tar... /bin/tar
checking whether ln -s works... yes
checking for gawk... gawk
checking for a thread-safe mkdir -p... /bin/mkdir -p
checking for bison... no
configure: WARNING:
*** Without Bison you will not be able to build PostgreSQL from Git nor
*** change any of the parser definition files.  You can obtain Bison from
*** a GNU mirror site.  (If you are using the official distribution of
*** PostgreSQL then you do not need to worry about this, because the Bison
*** output is pre-generated.)
checking for flex... no
configure: WARNING:
*** Without Flex you will not be able to build PostgreSQL from Git nor
*** change any of the scanner definition files.  You can obtain Flex from
*** a GNU mirror site.  (If you are using the official distribution of
*** PostgreSQL then you do not need to worry about this because the Flex
*** output is pre-generated.)
checking for perl... /usr/bin/perl
configure: using perl 5.18.2
checking for main in -lm... yes
checking for library containing setproctitle... no
checking for library containing dlopen... -ldl
checking for library containing socket... none required
checking for library containing shl_load... no
checking for library containing getopt_long... none required
checking for library containing crypt... -lcrypt
checking for library containing shm_open... -lrt
checking for library containing shm_unlink... none required
checking for library containing fdatasync... none required
checking for library containing sched_yield... none required
checking for library containing gethostbyname_r... none required
checking for library containing shmget... none required
checking for library containing readline... no
configure: error: readline library not found
If you have readline already installed, see config.log for details on the
failure.  It is possible the compiler isn't looking in the proper directory.
Use --without-readline to disable readline support.
root@pg1:/tmp/postgres-xl-9.5r1.3# 
