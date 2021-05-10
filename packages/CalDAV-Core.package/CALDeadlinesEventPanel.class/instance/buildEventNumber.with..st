as yet unclassified
buildEventNumber: anEvent with: aBuilder
	| x |
	
	"x := self dayGridWidth * aNumber."
	^ aBuilder pluggableButtonSpec new
		model: self;
		enabled: false;
		label: anEvent event title;
		frame: (0 @ (self eventCounter/self numberOfEvents) corner: 1@ ((self eventCounter + 1)/self numberOfEvents));
		yourself