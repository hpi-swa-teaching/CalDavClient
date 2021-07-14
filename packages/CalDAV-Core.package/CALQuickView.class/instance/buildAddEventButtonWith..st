toolbuilder
buildAddEventButtonWith: aBuilder
	
	| anchorToImage |
	anchorToImage := TextAnchor new anchoredMorph: self buildAddEventButton.
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openAddEventDialog;
		enabled: true;
		label: ('{1}' asText format: {Character startOfHeader asText addAttribute: anchorToImage});
		frame: (0.0 @ 0 corner: 0.25 @ 0.1);
		yourself