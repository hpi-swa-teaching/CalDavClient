copying
compressedCopy

	| compressedEvent |
	
	compressedEvent := SCMEvent new
		title: self title; 
		begin: self begin;
		end: self end;
		color: self color;
		yourself.
	
	self description isEmpty ifFalse: [compressedEvent description: self description].
	self location isEmpty ifFalse: [compressedEvent location: self location].
	self participants isEmpty ifFalse: [compressedEvent participants: self participants].
	
	^ compressedEvent