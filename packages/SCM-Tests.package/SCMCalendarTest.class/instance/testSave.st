accessing
testSave

	| eventsBeforeSave eventsAfterLoad |
	
	self demoCalendar addEvent: SCMEvent new.
	
	eventsBeforeSave := self demoCalendar events.
	self demoCalendar saveToDisk.
	"To Do: check if file actually exists..."
	self demoCalendar loadFromDisk.
	eventsAfterLoad := self demoCalendar events.
	
	self assert: eventsBeforeSave size equals: eventsAfterLoad size.