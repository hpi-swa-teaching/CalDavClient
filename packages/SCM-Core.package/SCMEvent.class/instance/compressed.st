accessing
compressed

	| s |
	s := SCMEvent new
		title: self title; 
		begin: self begin;
		end: self end
		yourself.
	
	(self description = '' or: [self description = nil]) ifFalse: [s description: self description].
	(self location = '' or: [self location = nil]) ifFalse: [s location self location].
	(self participants = '' or: [self participants = nil]) ifFalse: [s participants self participants].
	
	^ s