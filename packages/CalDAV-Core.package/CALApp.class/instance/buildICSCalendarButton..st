toolbuilder
buildICSCalendarButton: aBuilder
	
	| anchorToImage |
	
	anchorToImage := TextAnchor new anchoredMorph: self buildICSCalendarButton.
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #importSubscriptionCalendar;
		label: ('{1}' asText format: {Character startOfHeader asText addAttribute: anchorToImage});
		frame: (0.105 @ 0 corner: 0.135 @ 0.05);
		yourself