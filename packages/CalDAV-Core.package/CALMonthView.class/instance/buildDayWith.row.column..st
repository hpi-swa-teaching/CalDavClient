toolbuilder
buildDayWith: aBuilder row: aRow column: aColumn

	^ OrderedCollection new
		add: (self buildListAt: aRow and: aColumn with: aBuilder);
	  	add: (self buildButtonAt: aRow and: aColumn with: aBuilder);
		yourself
	 