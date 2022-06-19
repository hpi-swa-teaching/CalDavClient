calendar management
refreshCalendars

	self calendars do: [:each | each refresh].
	self updateView 
