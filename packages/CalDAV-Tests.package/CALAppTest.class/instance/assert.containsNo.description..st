assertions
assert: aDirectory containsNo: aFileName description: aDescription

	self assert: (aDirectory fileExists: aFileName) not description: aDescription