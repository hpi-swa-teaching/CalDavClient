as yet unclassified
testWithCurrentTime

	"allow 5 seconds for very slow machines :}"
	self demoEvent begin: DateAndTime now.
	self assert:(Timespan starting: self demoEvent begin ending: DateAndTime now)
		duration asSeconds < 65.
	
	self demoEvent end: DateAndTime now.
	self assert: (Timespan starting: self demoEvent end ending: DateAndTime now)
		duration asSeconds < 65