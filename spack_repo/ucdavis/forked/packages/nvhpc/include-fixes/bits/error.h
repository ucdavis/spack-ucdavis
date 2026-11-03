/* UC Davis override of glibc's <bits/error.h> for nvc/nvc++ (see forked nvhpc package.py).
   nvc reports itself as GCC 11, so glibc's <error.h> enables inline error() and
   error_at_line() wrappers that rely on __builtin_va_arg_pack, which nvc does not
   implement: callers fail to link ("undefined reference to __builtin_va_arg_pack") and
   nvc ICEs emitting debug info for them with -g. Without the wrappers, error() and
   error_at_line() are ordinary calls into glibc. Other compilers get the real header. */
#if !defined __NVCOMPILER
# include_next <bits/error.h>
#endif
