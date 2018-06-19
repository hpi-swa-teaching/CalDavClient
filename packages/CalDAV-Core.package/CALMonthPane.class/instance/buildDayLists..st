toolbuilder
buildDayLists: aBuilder
	
	self fields: OrderedCollection new.
	42 timesRepeat: [ self days add: (CALDay new parent: self parent) ].
	self fillMonth.
	1 to: 6 do: [ :row |
		 1 to: 7 do: [ :column |
			self fields addAll: (self buildDayWith: aBuilder row: row column: column).
		]
	].
	^ fields