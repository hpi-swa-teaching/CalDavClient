initialize
initialize 
	self 
		name: 'Default';
		events: SortedCollection new.
	self events sortBlock: [:a :b | a begin < b begin].
	self restoreEvents