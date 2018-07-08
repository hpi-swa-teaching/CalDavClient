initialize
initialize 

	self 
		name: 'Default';
		events: SortedCollection new;
		color: Color random.
	self events sortBlock: [:a :b | a begin < b begin]