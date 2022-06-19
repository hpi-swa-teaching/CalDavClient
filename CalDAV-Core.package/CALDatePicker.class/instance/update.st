CalendarMorph
update

	self submorphsDo: [:m | m delete].
	self initializeSubmorphs 