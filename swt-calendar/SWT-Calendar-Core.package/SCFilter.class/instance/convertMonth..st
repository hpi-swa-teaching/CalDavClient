filtering
convertMonth: aMonth

	| input monthList |
	
	input := aMonth.
	monthList := #(January February March April May June July August September October November December).
	
	((input isString) and: (((input asInteger) isInteger) = false))
		ifTrue: [
				(monthList includes: (input asSymbol))
					ifTrue: [^input]	
					ifFalse: [appointmentDialog handleError: 'Please enter a valid month.'. ^false]
			]
		ifFalse: [
			input := (aMonth asInteger).
			(input isInteger)
				ifTrue: [
					(input between: self minimumMonths and:self maximumMonths)
						ifTrue: [^((monthList at: input) asString)]
						ifFalse: [appointmentDialog handleError: 'Invalid month. Please enter a number from 1 to 12.'. ^false]
				]
			]


