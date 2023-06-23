
Case of 
		
	: (Form event code:C388=On Load:K2:1)
		InitInfo
		
		
	: (Form event code:C388=On Page Change:K2:54)
		
		If (FORM Get current page:C276=3)
			var $tabs : Collection
			$tabs:=New collection:C1472("Tables"; "Home"; "Insert")
			WP ShowTabPages("WPtoolbar"; $tabs)
			GOTO OBJECT:C206(*; "WParea")
			
		End if 
		
End case 

