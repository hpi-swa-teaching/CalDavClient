accessing
datesAreValid  

	self begin < self end
		ifTrue: [^'']
		ifFalse:[^CALEvent endBeforeStartError]