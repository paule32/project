// ----------------------------------------------------------------
// dBaseTools_Exception.prg
// Author: Jens Kallup - kallup non-profit
// Date..: 02/12/2022
//
// This file contains utils functions for working with dBase 12.
// All rights reserved.
// ----------------------------------------------------------------

// ----------------------------------------------------------------
// exception classes for fine tuning exceptions:
// ----------------------------------------------------------------
class dbBaseTools_Exception_Unknown of Exception
	this.ErrorCode   = 0
	this.ErrorString = ""
endclass

class dbBaseTools_Exception_DLL of Exception
	this.ErrorCode   = 0
	this.ErrorString = ""
endclass
