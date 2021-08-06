testing
testllistFramesDontIntersect
	
	| frames frame |
	
	frames := OrderedCollection new.
	1 to: 6 do: [:row | 
		1 to: 7 do: [:column | frames add: (self monthView listFrameWith: row and: column)]].
	[frames size > 0] 
		whileTrue: [frame := frames first.
			frames remove: frame.
			frames do: [:each | self assert: (frame intersects: each) not]]