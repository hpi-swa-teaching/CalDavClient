testing
testDate
	
	self assert: self subject submorphs first date equals: self monday.
	
	(1 to: 7) doWithIndex:
		[:foo :i | 
			self assert: ((self subject submorphs at: i) date) equals: (self monday addDays: i - 1).
			self assert: (self subject submorphs at: i) date class equals: Date]