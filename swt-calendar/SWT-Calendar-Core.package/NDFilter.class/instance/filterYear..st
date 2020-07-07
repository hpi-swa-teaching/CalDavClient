as yet unclassified
filterYear: aYear

	| input |
	
	input := (aYear asInteger).
	
	(input isInteger)
		ifTrue: [
			((input asString) size > 4)
				ifTrue: [appointmentDialog handleError: 'Wrong year format. Please choose a year between 0-9999.'. ^false]
				ifFalse: [^input]
		]
		ifFalse: [appointmentDialog handleError: 'Wrong year format. Please enter a number.'. ^false]