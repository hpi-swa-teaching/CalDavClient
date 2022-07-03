comparing
= comparand

	^ self begin = comparand begin
			and: [self end = comparand end
			and: [self title = comparand title
			and: [self description = comparand description
			and: [self participants = comparand participants
			and: [self location = comparand location
			and: [self color = comparand color]]]]]]