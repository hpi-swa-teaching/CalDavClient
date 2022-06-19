assertions
assert: aDirectory containsNo: aString

	self assert: (aDirectory fileExists: aString) not description: aDirectory name, ' should not contain file named ', aString