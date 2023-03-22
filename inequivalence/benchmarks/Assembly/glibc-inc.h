#ifndef C_LABEL

/* Define a macro we can use to construct the asm name for a C symbol.  */
# define C_LABEL(name)	name##:

#endif

#ifdef __ASSEMBLER__
/* Mark the end of function named SYM.  This is used on some platforms
   to generate correct debugging information.  */
# ifndef END
#  define END(sym)
# endif

# ifndef JUMPTARGET
#  define JUMPTARGET(sym)	sym
# endif
#endif

/* Makros to generate eh_frame unwind information.  */
#ifdef __ASSEMBLER__
# define cfi_startproc			.cfi_startproc
# define cfi_endproc			.cfi_endproc
# define cfi_def_cfa(reg, off)		.cfi_def_cfa reg, off
# define cfi_def_cfa_register(reg)	.cfi_def_cfa_register reg
# define cfi_def_cfa_offset(off)	.cfi_def_cfa_offset off
# define cfi_adjust_cfa_offset(off)	.cfi_adjust_cfa_offset off
# define cfi_offset(reg, off)		.cfi_offset reg, off
# define cfi_rel_offset(reg, off)	.cfi_rel_offset reg, off
# define cfi_register(r1, r2)		.cfi_register r1, r2
# define cfi_return_column(reg)	.cfi_return_column reg
# define cfi_restore(reg)		.cfi_restore reg
# define cfi_same_value(reg)		.cfi_same_value reg
# define cfi_undefined(reg)		.cfi_undefined reg
# define cfi_remember_state		.cfi_remember_state
# define cfi_restore_state		.cfi_restore_state
# define cfi_window_save		.cfi_window_save
# define cfi_personality(enc, exp)	.cfi_personality enc, exp
# define cfi_lsda(enc, exp)		.cfi_lsda enc, exp

#else /* ! ASSEMBLER */

# define CFI_STRINGIFY(Name) CFI_STRINGIFY2 (Name)
# define CFI_STRINGIFY2(Name) #Name
# define CFI_STARTPROC	".cfi_startproc"
# define CFI_ENDPROC	".cfi_endproc"
# define CFI_DEF_CFA(reg, off)	\
   ".cfi_def_cfa " CFI_STRINGIFY(reg) "," CFI_STRINGIFY(off)
# define CFI_DEF_CFA_REGISTER(reg) \
   ".cfi_def_cfa_register " CFI_STRINGIFY(reg)
# define CFI_DEF_CFA_OFFSET(off) \
   ".cfi_def_cfa_offset " CFI_STRINGIFY(off)
# define CFI_ADJUST_CFA_OFFSET(off) \
   ".cfi_adjust_cfa_offset " CFI_STRINGIFY(off)
# define CFI_OFFSET(reg, off) \
   ".cfi_offset " CFI_STRINGIFY(reg) "," CFI_STRINGIFY(off)
# define CFI_REL_OFFSET(reg, off) \
   ".cfi_rel_offset " CFI_STRINGIFY(reg) "," CFI_STRINGIFY(off)
# define CFI_REGISTER(r1, r2) \
   ".cfi_register " CFI_STRINGIFY(r1) "," CFI_STRINGIFY(r2)
# define CFI_RETURN_COLUMN(reg) \
   ".cfi_return_column " CFI_STRINGIFY(reg)
# define CFI_RESTORE(reg) \
   ".cfi_restore " CFI_STRINGIFY(reg)
# define CFI_UNDEFINED(reg) \
   ".cfi_undefined " CFI_STRINGIFY(reg)
# define CFI_REMEMBER_STATE \
   ".cfi_remember_state"
# define CFI_RESTORE_STATE \
   ".cfi_restore_state"
# define CFI_WINDOW_SAVE \
   ".cfi_window_save"
# define CFI_PERSONALITY(enc, exp) \
   ".cfi_personality " CFI_STRINGIFY(enc) "," CFI_STRINGIFY(exp)
# define CFI_LSDA(enc, exp) \
   ".cfi_lsda " CFI_STRINGIFY(enc) "," CFI_STRINGIFY(exp)
#endif

#ifndef _X86_SYSDEP_H
#define _X86_SYSDEP_H 1

/* Set if CF_BRANCH (IBT) is enabled.  */
#define X86_FEATURE_1_IBT	(1U << 0)
/* Set if CF_RETURN (SHSTK) is enabled.  */
#define X86_FEATURE_1_SHSTK	(1U << 1)

#ifdef __CET__
# define CET_ENABLED	1
# define IBT_ENABLED	(__CET__ & X86_FEATURE_1_IBT)
# define SHSTK_ENABLED	(__CET__ & X86_FEATURE_1_SHSTK)
#else
# define CET_ENABLED	0
# define IBT_ENABLED	0
# define SHSTK_ENABLED	0
#endif

/* Offset for fxsave/xsave area used by _dl_runtime_resolve.  Also need
   space to preserve RCX, RDX, RSI, RDI, R8, R9 and RAX.  It must be
   aligned to 16 bytes for fxsave and 64 bytes for xsave.  */
#define STATE_SAVE_OFFSET (8 * 7 + 8)

/* Save SSE, AVX, AVX512, mask and bound registers.  */
#define STATE_SAVE_MASK \
  ((1 << 1) | (1 << 2) | (1 << 3) | (1 << 5) | (1 << 6) | (1 << 7))

/* Constants for bits in __x86_string_control:  */

/* Avoid short distance REP MOVSB.  */
#define X86_STRING_CONTROL_AVOID_SHORT_DISTANCE_REP_MOVSB	(1 << 0)

#ifdef	__ASSEMBLER__

/* Syntactic details of assembler.  */

#ifdef _CET_ENDBR
# define _CET_NOTRACK notrack
#else
# define _CET_ENDBR
# define _CET_NOTRACK
#endif

/* ELF uses byte-counts for .align, most others use log2 of count of bytes.  */
#define ALIGNARG(log2) 1<<log2
#define ASM_SIZE_DIRECTIVE(name) .size name,.-name;

#define C_SYMBOL_NAME(name) name

/* Define an entry point visible from C.  */
#define	ENTRY_P2ALIGN(name, alignment)					      \
  .globl C_SYMBOL_NAME(name);						      \
  .type C_SYMBOL_NAME(name),@function;					      \
  .align ALIGNARG(alignment);						      \
  C_LABEL(name)								      \
  cfi_startproc;							      \
  _CET_ENDBR;								      \
  CALL_MCOUNT

/* Common entry 16 byte aligns.  */
#define ENTRY(name) ENTRY_P2ALIGN (name, 4)

#undef	END
#define END(name)							      \
  cfi_endproc;								      \
  ASM_SIZE_DIRECTIVE(name)

#define ENTRY_CHK(name) ENTRY (name)
#define END_CHK(name) END (name)

/* Since C identifiers are not normally prefixed with an underscore
   on this system, the asm identifier `syscall_error' intrudes on the
   C name space.  Make sure we use an innocuous name.  */
#define	syscall_error	__syscall_error
#define mcount		_mcount

#undef	PSEUDO_END
#define	PSEUDO_END(name)						      \
  END (name)

/* Local label name for asm code. */
#ifndef L
/* ELF-like local names start with `.L'.  */
# define LOCAL_LABEL(name) .L##name
# define L(name)	LOCAL_LABEL(name)
#endif

#define atom_text_section .section ".text.atom", "ax"

#endif	/* __ASSEMBLER__ */

#endif	/* _X86_SYSDEP_H */


/* Assembler macros for i386.
   Copyright (C) 1991-2023 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

#ifdef	__ASSEMBLER__
# define GET_PC_THUNK(reg) __x86.get_pc_thunk.reg
#else
# define GET_PC_THUNK_STR(reg) "__x86.get_pc_thunk." #reg
#endif

#ifdef	__ASSEMBLER__

/* Syntactic details of assembler.  */

/* If compiled for profiling, call `mcount' at the start of each function.  */
#ifdef	PROF
/* The mcount code relies on a normal frame pointer being on the stack
   to locate our caller, so push one just for its benefit.  */
#define CALL_MCOUNT \
  pushl %ebp; cfi_adjust_cfa_offset (4); movl %esp, %ebp; \
  cfi_def_cfa_register (ebp); call JUMPTARGET(mcount); \
  popl %ebp; cfi_def_cfa (esp, 4);
#else
#define CALL_MCOUNT		/* Do nothing.  */
#endif

#define	PSEUDO(name, syscall_name, args)				      \
  .globl syscall_error;							      \
lose: SYSCALL_PIC_SETUP							      \
  jmp JUMPTARGET(syscall_error);					      \
  ENTRY (name)								      \
  DO_CALL (syscall_name, args);						      \
  jb lose

# define SETUP_PIC_REG(reg) \
  .ifndef GET_PC_THUNK(reg);						      \
  .section .text.GET_PC_THUNK(reg),"axG",@progbits,GET_PC_THUNK(reg),comdat;  \
  .globl GET_PC_THUNK(reg);						      \
  .hidden GET_PC_THUNK(reg);						      \
  .p2align 4;								      \
  .type GET_PC_THUNK(reg),@function;					      \
GET_PC_THUNK(reg):							      \
  movl (%esp), %e##reg;							      \
  ret;									      \
  .size GET_PC_THUNK(reg), . - GET_PC_THUNK(reg);			      \
  .previous;								      \
  .endif;								      \
  call GET_PC_THUNK(reg)

# define LOAD_PIC_REG(reg) \
  SETUP_PIC_REG(reg); addl $_GLOBAL_OFFSET_TABLE_, %e##reg

#undef JUMPTARGET
#ifdef PIC
#define JUMPTARGET(name)	name##@PLT
#define SYSCALL_PIC_SETUP \
    pushl %ebx;								      \
    cfi_adjust_cfa_offset (4);						      \
    call 0f;								      \
0:  popl %ebx;								      \
    cfi_adjust_cfa_offset (-4);						      \
    addl $_GLOBAL_OFFSET_TABLE_+[.-0b], %ebx;

#else
#define JUMPTARGET(name)	name
#define SYSCALL_PIC_SETUP	/* Nothing.  */
#endif

#else /* __ASSEMBLER__ */

# define SETUP_PIC_REG_STR(reg)						\
  ".ifndef " GET_PC_THUNK_STR (reg) "\n"				\
  ".section .text." GET_PC_THUNK_STR (reg) ",\"axG\",@progbits,"	\
    GET_PC_THUNK_STR (reg) ",comdat\n"					\
  ".globl " GET_PC_THUNK_STR (reg) "\n"					\
  ".hidden " GET_PC_THUNK_STR (reg) "\n"				\
  ".p2align 4\n"							\
  ".type " GET_PC_THUNK_STR (reg) ",@function\n"			\
GET_PC_THUNK_STR (reg) ":"						\
  "movl (%%esp), %%e" #reg "\n"						\
  "ret\n"								\
  ".size " GET_PC_THUNK_STR (reg) ", . - " GET_PC_THUNK_STR (reg) "\n"	\
  ".previous\n"								\
  ".endif\n"								\
  "call " GET_PC_THUNK_STR (reg)

# define LOAD_PIC_REG_STR(reg) \
  SETUP_PIC_REG_STR (reg) "\naddl $_GLOBAL_OFFSET_TABLE_, %%e" #reg

#endif	/* __ASSEMBLER__ */


#undef ALIGN
#define ALIGN(log) .align 1<<log

#undef L
#define L(body) .L##body