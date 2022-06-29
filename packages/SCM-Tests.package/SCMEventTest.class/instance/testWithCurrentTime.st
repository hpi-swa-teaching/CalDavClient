as yet unclassified
testWithCurrentTime

	"allow 5 seconds for very slow machines :}"
	self pastEvent begin: DateAndTime now.
	self assert: (Timespan starting: self pastEvent begin ending: DateAndTime now)
		duration asSeconds < 65.
	
	self pastEvent end: DateAndTime now.
	self assert: (Timespan starting: self pastEvent end ending: DateAndTime now)
		duration asSeconds < 65