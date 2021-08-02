accessing
events

	^ events ifNil: [events := SortedCollection new sortBlock: [:a :b | a begin < b begin]]