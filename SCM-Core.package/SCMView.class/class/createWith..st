as yet unclassified
createWith: aSCMCalendarManager

	^ self new
			calendarManager: aSCMCalendarManager;
			load: self defaultView;
			yourself