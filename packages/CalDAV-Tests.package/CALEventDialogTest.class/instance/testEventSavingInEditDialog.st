as yet unclassified
testEventSavingInEditDialog

	| event |
	
	event := self testEvent.
	eventDialog 
		parent: CALApp new;
		event: event.
	"eventDialog saveEvent"