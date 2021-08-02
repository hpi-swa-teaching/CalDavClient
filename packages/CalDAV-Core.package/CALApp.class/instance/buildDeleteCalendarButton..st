toolbuilder
buildDeleteCalendarButton: aBuilder
	
	| anchorToImage |
	
	anchorToImage := TextAnchor new anchoredMorph: self buildDeleteCalendarButton.
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openDeleteCalendarDialog;
		label: ('{1}' asText format: {Character startOfHeader asText addAttribute: anchorToImage});
		frame: (0.035 @ 0 corner: 0.065 @ 0.05);
		yourself