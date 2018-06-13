as yet unclassified
testllistFramesDontIntersect
	
	| frames frame |
	
	frames := OrderedCollection new.
	1 to: 6 do: [ :row | 
		1 to: 7 do: [ :column | 
				frames add: (monthView listFrameWith: row and: column)
			]
		].
	[frames size > 2] whileTrue:[
		frame := frames first.
		frames remove: frame.
		self assert: ((frame intersects: frames first) not)
		]
	