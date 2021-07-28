toolbuilder
buildMonthViewButton: aBuilder
	
	| anchorToImage |
	
	anchorToImage := TextAnchor new anchoredMorph: self buildMonthViewButton.
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openMonthView;
		label: ('{1}' asText format: {Character startOfHeader asText addAttribute: anchorToImage});
		enabled: #isMonthViewNotActive;
		frame: (0.89 @ 0 corner: 0.92 @ 0.05);
		yourself