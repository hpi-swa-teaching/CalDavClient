event block layouting
getButtonsForEventGroup: aCollection with: aBuilder

	| eventWidth buttons |
	
	buttons := OrderedCollection new.
	eventWidth := 1 / aCollection size.	
	(1 to: aCollection size) do: [ :index | 
		| column buttonsOfColumn | 
		column := aCollection at: index.
		buttonsOfColumn := column collect: [ :eventBlock | 
			self setInitialFrameFor: eventBlock in: index with: eventWidth.
			self expand: eventBlock in: aCollection after: index by: eventWidth.
			eventBlock buildWith: aBuilder].
		buttons addAll: buttonsOfColumn].
	^ buttons