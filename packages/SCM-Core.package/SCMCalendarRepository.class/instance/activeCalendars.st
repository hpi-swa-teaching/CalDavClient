as yet unclassified
activeCalendars

	^ self calendars select: [:calendar | calendar isActive = true]