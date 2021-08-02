comparing
= anEvent
	
	^ (self title = anEvent title
			and: [self begin = anEvent begin]
			and: [self end = anEvent end]
			and: [self location = anEvent location])
		and: [self participants = anEvent participants
				and: [self description = anEvent description]]