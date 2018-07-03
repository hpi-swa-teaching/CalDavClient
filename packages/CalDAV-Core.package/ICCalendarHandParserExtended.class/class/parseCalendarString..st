helper
parseCalendarString: aString

	| parser |
	
	parser := self on: (ReadStream on: aString).
	parser generator: ICCalendarGeneratorExtended new.
	parser parse.
	^ parser product