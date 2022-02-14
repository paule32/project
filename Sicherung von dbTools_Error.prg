// ----------------------------------------------------------------
// exception classes for fine tuning exceptions:
// ----------------------------------------------------------------
class dbTools_ExceptionDLL of Exception ; endclass

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
function dbTools_LastError(numVerboseLevel, exceptError)
	local boolResult
			boolResult = true
	if numVerboseLevel == 1
		? dbTools_LangError[ dbTools_ExStringError ] + ":" + ;
		exceptError.filename + ": " + ;
		exceptError.lineNum  + ": " + ;
		exceptError.message
	elseif numVerboseLevel == 2
		ErrorMessageBox(e.FileName, e.Message)
		boolResult = false
	endif
return boolResult
