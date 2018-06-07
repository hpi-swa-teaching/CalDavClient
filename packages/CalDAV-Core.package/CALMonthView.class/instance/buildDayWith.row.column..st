toolbuilder
buildDayWith: aBuilder row: aRow column: aColumn

	^ OrderedCollection new
		add: (self buildListAt: aRow and: aColumn with: aBuilder);
	  	add: (self buildTextAt: aRow and: aColumn with: aBuilder);
		yourself
	 