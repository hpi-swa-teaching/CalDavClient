assertions
assert: aDirectory contains: aString

	self assert: (aDirectory fileExists: aString) description: aDirectory name, ' should contain file named ', aString