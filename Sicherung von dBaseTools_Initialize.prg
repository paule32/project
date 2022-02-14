// ----------------------------------------------------------------
// dBaseTools_Initialize.prg
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

#include "dBaseTools_PreDefine.h"

#ifdef  dBaseTools_Locales == "ENG"
  #include  "dBaseTools_LocalesENG.h"
#elseif dBaseTools_Locales == "DEU"
  #include "dBaseTools_LocalesDEU.h"
#endif

#include "dBaseTools_PublicMembers.h"

// ----------------------------------------------------------------
// import external program code ...
// ----------------------------------------------------------------
set procedure to dBaseTools_Error.prg additive

// ----------------------------------------------------------------
// @brief: call initialize function to initialize variables and
//         setup stuff related to dBaseTools .dll library.
// ----------------------------------------------------------------
function dBaseTool_Initialize()
	local bResult, tmpFile

	bResult = dBaseTools_True
	tmoFile = null
	try
		tmpFile = new File()
		try
			if not tmpFile.exists(dBaseTools_DLL)
				local ex
				ex = new dBaseTools_Exception_DLL()
				ex.message = dbTools_ErrorString_DLLnotFound ]
			endif
		finally
			tmpFile.close()
			return dbTools_False
		endtry
	catch (dBaseTools_Exception_DLL e)
		dBaseTools_LastError(dBaseTools_Verbose1, e)
		return dBaseTools_False
		
	catch (dBaseTools_Exception_Unknown e)
		dBaseTools_LastError(dBaseTools_Verbose1, e)
		return dBaseTools_False
		
	catch (Exception e)
		dBaseTools_LastError(dBaseTools_Verbose1, e)
		return dBaseTools_False
	endtry
	
//	if not exists
	/*try
		if type("dBaseTools_newStringClass") # "FP"
			extern PASCAL dBaseTools_Boolean dbStringClass(CVOID) dBaseTools_DLL ;
					 from "dBaseTools_newStringClass"
		endif

		if dBaseTools_newStringClass() == dBaseTools_False
			? "caller problem"
		endif
	catch (Exception e)
		dbTools_LastError(dBaseTools_Verbose1, e)
		return dBaseTools_True
	endtry*/
return bResult
