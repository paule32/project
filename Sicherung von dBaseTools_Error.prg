// ----------------------------------------------------------------
// dBaseTools_Error.prg
// Author: Jens Kallup - kallup non-profit
// Date..: 02/12/2022
//
// This file contains utils functions for working with dBase 12.
// All rights reserved.
// ----------------------------------------------------------------
set procedure to 
// ----------------------------------------------------------------
// exception classes for fine tuning exceptions:
// ----------------------------------------------------------------
class dbTools_ExceptionDLL of Exception
endclass

// ----------------------------------------------------------------
// @brief emit a error when verbose > 0
// @param [in] numVerboseLevel:
//      0 - do nothing,
//      1 - silent error to debug window,
//      2 - display error in a message box
//
// @param [out] exceptError:
//      exception object raised a error.
//
// @return
//      true  - no errors
//      false - a secondary error occur
// ----------------------------------------------------------------
function dbBaseTools_LastError(numVerboseLevel, exceptError)
	local bResult, errStr
	
	bResult = dBaseTools_True
	errStr  = dBaseTools_ErrorString_Error + ":" + ;
	exceptError.filename + ": " +          ;
	exceptError.lineNum  + ": " +          ;
	exceptError.message

	if numVerboseLevel == 1
		? errStr
	elseif numVerboseLevel == 2
		ErrorMessageBox(errStr)
	endif
return bResult
