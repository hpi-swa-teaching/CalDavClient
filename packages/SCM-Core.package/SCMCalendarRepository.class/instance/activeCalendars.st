accessing
activeCalendars

	^ self calendars select: [:calendar | calendar isActive]