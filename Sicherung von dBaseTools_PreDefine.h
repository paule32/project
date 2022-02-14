// ----------------------------------------------------------------
// dBaseTools_PreDefine.h
// Author: Jens Kallup - kallup non-profit
// Date..: 02/12/2022
//
// This file contains utils functions for working with dBase 12.
// All rights reserved.
// ----------------------------------------------------------------

#define dBaseTools_DLL     "dbTools.dll"   // utils .dll name
#define dBaseTools_Verbose 1               // debug level

// ----------------------------------------------------------------
// CLOGICAL is a 4 Byte, 32-bit number presentation under the dBase
// data types. I found this is very big for a boolean, and logical
// check.
// I come from the MS-DOS times, there have the programmers a credo
// "Use only cheap code, maximize the results.".
// Today, in times, in view of memory, and hard disk space, nobody
// realy make thinkings over space anymore. But I think, this is a
// important thing.
// So, I continue the story, and try to use minimalistics resource
// consumeing. You can held me crazy, but that's me. :-)
// ----------------------------------------------------------------
#define dBaseTools_Boolean CSHORT

// ----------------------------------------------------------------
// the win32api functions (and some other programming languages
// like Delphi) begin at -1 for invalid code/value checking,
// because 0 itself can be a null field, and terminator.
// So, we have 3 possibilities/ambigous: therefore -1 stands for
// FALSE, and 0 for TRUE.
// But programming languages like dBase 12 begin their calculus at
// position 0, and as self null. So, we have to translate the -1 to
// 0, and 0 to 1 (please sorry for my English).
// ----------------------------------------------------------------
#define dbBaseTools_False   0
#define dbBaseTools_True    1

// ----------------------------------------------------------------
// error codes ressources index:
// ----------------------------------------------------------------
#define dBaseTools_ErrorCode_Unknown                0
#define dBaseTools_ErrorCode_Error                  1
#define dBaseTools_ErrorCode_DLLnotFound            2
