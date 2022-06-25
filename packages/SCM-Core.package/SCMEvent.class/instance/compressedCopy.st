accessing
compressedCopy

	| s |
	s := SCMEvent new "mandatory"
		title: self title; 
		begin: self begin;
		end: self end;
		color: self color;
		yourself.
	
	(self description ~= '' and: [self description ~= nil]) ifTrue: [s description: self description].
	(self location ~= '' and: [self location ~= nil]) ifTrue: [s location: self location].
	(self participants ~= '' and: [self participants ~= nil]) ifTrue: [s participants: self participants].
	
	^ s