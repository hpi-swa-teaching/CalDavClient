accessing
activeEventsWithin: aTimespan

	^ self activeEvents
			select: [:each | each begin >= aTimespan start
				and: [each begin <= aTimespan end]]