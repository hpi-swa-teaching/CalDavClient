layouting
weekTitle: eventBlocks

	^ (Month nameOfMonth: ("(self days at: 1) monthIndex"eventBlocks first event beginMonth)) asString, 
		' Week: ',  
		(((eventBlocks first event beginDay) / 7) roundUpTo: 1) asString