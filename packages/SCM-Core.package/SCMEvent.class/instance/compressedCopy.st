accessing
compressedCopy

	| s |
	s := SCMEvent new "mandatory"
		title: self title; 
		begin: self begin;
		end: self end;
		color: self color;
		yourself.
	
	self description ~= '' ifTrue: [s description: self description].
	self location ~= '' ifTrue: [s location: self location].
	self participants ~= '' ifTrue: [s participants: self participants].
	
	^ s