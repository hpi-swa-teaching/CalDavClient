as yet unclassified
refreshEventsInWindow

self eventsInWindow: OrderedCollection new. 
self eventsDictionary do: [:event|
	event serverData start > (DateAndTime today) ifTrue:[
		event serverData start <= ((DateAndTime today)+ 10 days) ifTrue:[
			eventsInWindow add: event
			].].].