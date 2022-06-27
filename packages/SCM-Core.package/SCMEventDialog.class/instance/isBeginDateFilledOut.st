actions
isBeginDateFilledOut
	
	^ 2 <= ((self eventData at: #beginDay ~= '') asNumber +  (self eventData at: #beginMonth ~= '') asNumber + (self eventData at: #beginYear ~= ''))

	