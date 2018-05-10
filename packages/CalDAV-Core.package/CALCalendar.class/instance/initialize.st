initialize
initialize 
	self events: SortedCollection new.
	self events sortBlock: [:a :b | a begin < b begin]
	