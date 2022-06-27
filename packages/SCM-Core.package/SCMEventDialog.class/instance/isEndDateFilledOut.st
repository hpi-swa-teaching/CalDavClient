actions
isEndDateFilledOut
	
	^ 2 <= ((self eventData at: #endDay ~= '') asNumber +  (self eventData at: #endMonth ~= '') asNumber + (self eventData at: #beginYear ~= ''))

	