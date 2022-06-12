accessing
initialize

	self
		name: 'Default Calendar';
		events: (SortedCollection new sortBlock: [:a :b | a begin < b begin]; yourself);
		yourself.