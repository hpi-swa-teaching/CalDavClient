initialization
addViewDay: aSCMWeekViewDay withEvents: aSortedCollection

	self addEventMorphs: aSortedCollection ToViewDay: aSCMWeekViewDay.
	self addMorphBack: aSCMWeekViewDay