toolbuilding
switchFullDaySelected
	
	self 
		isFullDaySelected: self isFullDaySelected not;
		updateBegin;
		updateEnd;
		changed: #fullDayButtonLabel