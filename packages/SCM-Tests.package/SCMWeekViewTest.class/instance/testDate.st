as yet unclassified
testDate
	
	| dateMonday |
	dateMonday := (DateAndTime today asWeek) asDate next.
	self assert: self subject submorphs first date equals: dateMonday.

	
	(1 to: 7) doWithIndex:
		[:foo :i | 
			self assert: ((self subject submorphs at: i) date) equals: (dateMonday addDays: i-1).
			self assert: (self subject submorphs at: i) date class equals: Date.]