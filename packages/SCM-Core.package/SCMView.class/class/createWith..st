initialization
createWith: aSCMCalendarManager

	^ self new
			calendarManager: aSCMCalendarManager;
			load: self defaultView;
			yourself