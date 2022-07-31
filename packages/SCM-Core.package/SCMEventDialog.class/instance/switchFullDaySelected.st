actions
switchFullDaySelected
	
	self 
		fullDaySelected: self fullDaySelected not;
		updateBegin;
		updateEnd;
		changed: #fullDayButtonLabel