assertions
assert: aSpec hasButtonLabeled: aString

	self 
		assert: (aSpec submorphs anySatisfy: [:each | (each class canUnderstand: #label) and: 		[each label = aString]]) 
		description: 'Should have button labeled ', aString