updating
setEventTitle

	| eventTitle |
	eventTitle := PHLabel new;  text: 'Title: ', (mock serverData) summary asString, (String with: Character cr) , 'Start: ', ((mock serverData) start) asTime asString.
	eventTitle := (self calculateDuration: eventTitle).
	eventTitle minSize: 150@10.
	^eventTitle