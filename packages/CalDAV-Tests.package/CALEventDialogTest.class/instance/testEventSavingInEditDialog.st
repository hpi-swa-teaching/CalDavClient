as yet unclassified
testEventSavingInEditDialog

	| event |
	
	event := self demoEvent.
	eventDialog 
		parent: CALApp new;
		event: event.
	"eventDialog saveEvent"