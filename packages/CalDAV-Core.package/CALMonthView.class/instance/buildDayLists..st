as yet unclassified
buildDayLists: aBuilder
	
	| lists |
	
	lists := OrderedCollection new.
	1 to: 6 do: [ :row |
		 1 to: 7 do: [ :column |
			lists addAll: (self buildDayWith: aBuilder row: row column: column).
		]
	].
	^ lists