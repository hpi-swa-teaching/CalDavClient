updating
updateOrAddEvents: updateInformation

	updateInformation do: [ :rawEventData | | eventObject etag |
		eventObject := self events 
			detect: [:event | event url = (rawEventData at: #url)]
			ifNone: [|newEvent|
				newEvent := CalDavEvent newIn: self withUrl: (rawEventData at: #url).
				self addEvent: newEvent.
				newEvent].
		etag := rawEventData at: #'D:getetag'.
		eventObject updateOrNotDependingOnChangeInEtag: etag].