// ----------------------------------------------------------------
// dBaseTools.prg
// Author: Jens Kallup - kallup non-profit
// Date..: 02/12/2022
//
// This file contains utils functions for working with dBase 12.
// All rights reserved.
// ----------------------------------------------------------------
// the first thing here, you can define your default language
// for the project. At this moment, only:
//   "ENG" - English, and
//   "DEU" - German
// are supported.
// ----------------------------------------------------------------
#define dBaseTools_Locales "ENG"

// ----------------------------------------------------------------
// import external program code ...
// ----------------------------------------------------------------
set procedure to dBaseTools_Error.prg      additive
set procedure to dBaseTools_Exceptions.prg additive
set procedure to dBaseTools_Initialize.prg additive

do dBaseTools_Initialize()
