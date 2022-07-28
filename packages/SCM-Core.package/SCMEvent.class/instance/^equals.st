comparing
= aSCMEvent

	^ self begin = aSCMEvent begin
			and: [self end = aSCMEvent end
			and: [self title = aSCMEvent title
			and: [self description = aSCMEvent description
			and: [self participants = aSCMEvent participants
			and: [self location = aSCMEvent location
			and: [self color = aSCMEvent color]]]]]]