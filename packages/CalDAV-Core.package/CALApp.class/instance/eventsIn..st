accessing
eventsIn: aTimespan 

	| selectedEvents |
	
	selectedEvents := self selectedEvents
		select: [:each | ((each begin >= aTimespan start) and: [each begin < aTimespan end])
				or: [(each end >= aTimespan start) and: [each end < aTimespan end]] 
				or: [(each begin < aTimespan start) and: [each end >= aTimespan end]]].
	 ^ selectedEvents