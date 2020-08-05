event handling
setEventTitle: anEvent

	| eventTitle |
	eventTitle := PHLabel new;  text: 'Title: ', (anEvent serverData) summary asString, (String with: Character cr),'Start: ', ((anEvent serverData) start) asTime asString, (String with: Character cr), 'Duration: '.
	eventTitle := self calculateDuration: eventTitle event: anEvent.
	eventTitle minSize: 130@10.
	^eventTitle