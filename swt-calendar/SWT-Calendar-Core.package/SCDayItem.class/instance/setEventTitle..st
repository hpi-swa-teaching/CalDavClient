event handling
setEventTitle: anEvent

	| eventTitle |
	eventTitle := PHLabel new;  text: 'Title: ', (anEvent serverData) summary asString, (String with: Character cr),'Start: ', ((anEvent serverData) start) asTime asString, (String with: Character cr), 'Duration:', (String with: Character cr).
	eventTitle := self calculateDuration: eventTitle event: anEvent.
	eventTitle minSize: 100@10.
	^eventTitle