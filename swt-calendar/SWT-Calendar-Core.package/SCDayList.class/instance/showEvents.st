displaying
showEvents
|collectedEvents|

self do: [:outerEach | collectedEvents := calendar eventsInWindow select: [ :innerEach | 
		(innerEach serverData) start asDate asString = outerEach date asString]. 
		outerEach events: collectedEvents.].