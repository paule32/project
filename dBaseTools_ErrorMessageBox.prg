// ----------------------------------------------------------------
// dBaseTools_ErrorMessageBox.prg
// Author: Jens Kallup - kallup non-profit
// Date..: 02/12/2022
//
// This file contains utils functions for working with dBase 12.
// All rights reserved.
// ----------------------------------------------------------------

procedure ErrorMessageBox ( windowText, windowTitle, bModal)
	local f
	
	f = new ErrorMessageBoxForm()
	try
		f.text = windowTitle
		f.container1.editor1.value = windowText

		if (bModal)
			f.mdi = false
			f.ReadModal()
		else
			f.Open()
		endif
	finally
		release f
	endtry
return

class ErrorMessageBoxForm of FORM
   with (this)
      doubleBuffered = false
      colorNormal = "0xa00000"
      height = 9.0
      left = 6.1429
      top = 8.0909
      width = 56.5714
      text = ""
      systemTheme = false
      clientEdge = false
      autoCenter = true
      mdi = false
      smallTitle = true
      sizeable = false
      sysMenu = false
      maximize = false
      minimize = false
      allowDrop = false
   endwith

   this.CONTAINER1 = new CONTAINER(this)
   with (this.CONTAINER1)
      left = 2.0
      top = 1.0
      width = 51.0
      height = 5.5
      colorNormal = "Silver"
      borderStyle = 6	// Schattiert
   endwith

   this.CONTAINER1.EDITOR1 = new EDITOR(this.CONTAINER1)
   with (this.CONTAINER1.EDITOR1)
      height = 4.0
      left = 1.8571
      top = 0.4545
      width = 47.0
      value = "Error:"
      modify = false
      fontName = "Verdana"
      pageno = 0
      borderStyle = 4	// Einfach
   endwith

   this.PUSHBUTTON1 = new PUSHBUTTON(this)
   with (this.PUSHBUTTON1)
      onClick = class::PUSHBUTTON1_ONCLICK
      systemTheme = false
      height = 1.5
      left = 37.0
      top = 7.0
      width = 15.2857
      text = "Close"
      default = true
      fontName = "Verdana"
      fontBold = true
      mousePointer = 13	// Hand
      colorNormal = "Black/Yellow"
   endwith


   function PUSHBUTTON1_onClick()
      form.close()
      return

endclass
