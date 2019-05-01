as yet unclassified
newIn: calendar withId: id withUrl: url

	^ self new
		calendar: calendar;
		initializeServerData;
		uid: id;
		url: url;
		yourself