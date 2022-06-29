as yet unclassified
createPastEvent

	^ SCMEvent new
			begin: self pastEventBegin;
			end: self pastEventEnd;
			title: self pastEventTitle;
			description: self pastEventDescription;
			location: self pastEventLocation;
			participants: self pastEventParticipants;
			yourself