as yet unclassified
createEvent

	^ SCMEvent new
			begin: self eventBegin;
			end: self eventEnd;
			title: self eventTitle;
			description: self eventDescription;
			location: self eventLocation;
			participants: self eventParticipants;
			color: self eventColor;
			yourself