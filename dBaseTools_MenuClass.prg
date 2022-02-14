// ----------------------------------------------------------------
// MenuPanel.cc
// Author: Jens Kallup - kallup non-profit
// Date..: 02/12/2022
//
// This file contains utils functions for working with dBase 12.
// All rights reserved.
// ----------------------------------------------------------------

set procedure to dbTools.prg additive

class MenuPanelItem( parentObject )
	this.Name = ""
	this.Color = "yellow/blue"
	this.SubItem = null
endclass

class MenuPanel( parentObject ) of PaintBox( parentObject ) custom
	protect style
	
	// ---------------------
	// component properties
	// ---------------------
	with (this)
		metric   = 6      // pixel
		MenuBar  = null   // main menubar
		
		onOpen   = class::MenuPanel_OnOpen()
		onClose  = class::MenuPanel_OnClose()
	endwith

	// ----------------------------------------------
	// MenuPanel OnOpen:
	//           is fired, when the form opens.
	// ----------------------------------------------
	procedure MenuPanel_OnOpen
		this.MenuBar = new MenuPanelItem(this)
		dbTools_newStringClass()
	return

	procedure MenuPanel_OnClose
	return
	
	function AddMenu
endclass

// ----------------------------------------------------------------
// End of file: MenuPanel.cc
// ----------------------------------------------------------------