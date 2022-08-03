copying
compressedCopy

	| compressedEvent |
	
	compressedEvent := SCMEvent new
		title: self title; 
		begin: self begin;
		end: self end;
		color: self color;
		yourself.
	
	self description ~= '' ifTrue: [compressedEvent description: self description].
	self location ~= '' ifTrue: [compressedEvent location: self location].
	self participants ~= '' ifTrue: [compressedEvent participants: self participants].
	
	^ compressedEvent