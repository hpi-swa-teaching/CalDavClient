as yet unclassified
buildDayLists: aBuilder
	
	self fields: OrderedCollection new.
	1 to: 42 do: [:index | self days add: (CALDay new)].
	1 to: 6 do: [ :row |
		 1 to: 7 do: [ :column |
			self fields addAll: (self buildDayWith: aBuilder row: row column: column).
		]
	].
	self fillMonth.
	^ fields