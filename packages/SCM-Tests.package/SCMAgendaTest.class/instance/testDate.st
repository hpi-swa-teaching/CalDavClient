testing
testDate

	self assert: self subject submorphs first submorphs first date equals: DateAndTime today asDate.
	self assert: self subject submorphs first submorphs first date class equals: Date.
	
	(1 to: 7) doWithIndex:
		[:foo :i | self assert: ((self subject submorphs at: i) submorphs first date) equals: (DateAndTime today asDate addDays: i-1)]