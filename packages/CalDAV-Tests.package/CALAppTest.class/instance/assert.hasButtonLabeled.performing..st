assertions
assert: aSpec hasButtonLabeled: aString performing: aSymbol

	self 
		assert: (aSpec submorphs anySatisfy: [ :each | (each class canUnderstand: #label) and: [each label = aString] and: [each class canUnderstand: #actionSelector] and: [each actionSelector = aSymbol]]) 
		description: 'Should have button labeled ', aString, ' performing ', aSymbol asString