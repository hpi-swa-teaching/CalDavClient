as yet unclassified
buildDayWith: aBuilder row: aRow column: aColumn
	
	| day |
	day := CALDay new.
	day day: aRow * 7 + aColumn -7.
	^ OrderedCollection new
		add: (self buildListFor: day at: (self listFrameWith: aRow and: aColumn) with: aBuilder);
	  	add: (self buildTextFor: day at: (self textFrameWith: aRow and: aColumn) with: aBuilder);
		yourself
	 