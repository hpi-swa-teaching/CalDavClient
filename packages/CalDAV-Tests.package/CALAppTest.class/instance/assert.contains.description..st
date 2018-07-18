assertions
assert: aDirectory contains: aFileName description: aDescription

	self assert: (aDirectory fileExists: aFileName) description: aDescription