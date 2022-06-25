accessing
compressedCopy

	| s |
	s := SCMEvent new
		title: self title; 
		begin: self begin;
		end: self end
		yourself.
	
	(self description = '' or: [self description = nil]) ifTrue: [s description: self description].
	(self location = '' or: [self location = nil]) ifTrue: [s location: self location].
	(self participants = '' or: [self participants = nil]) ifTrue: [s participants: self participants].
	
	^ s