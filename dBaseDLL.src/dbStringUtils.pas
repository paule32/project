// ----------------------------------------------------------------
// dbStringUtils.pas
// Author: Jens Kallup - kallup non-profit
// Date..: 02/12/2022
//
// This file contains utils functions for working with dBase 12.
// All rights reserved.
// ----------------------------------------------------------------

unit dbStringUtils;

interface

function dBaseTools_bool_False: Char; stdcall export;
function dBaseTools_bool_True : Char; stdcall export;

function dBaseTools_new_StringClass: Boolean; stdcall export;

implementation

uses VCL.Dialogs;

function dBaseTools_bool_False: Char; begin result := '0'; end;
function dBaseTools_bool_True : Char; begin result := '1'; end;

function dBaseTools_new_StringClass: Boolean;
begin
  result := true;
  ShowMessage('hallo');
end;

end.

