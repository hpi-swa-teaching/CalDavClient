toolbuilder
buildRefreshButton: aBuilder
	
	| anchorToImage |
	anchorToImage := TextAnchor new anchoredMorph: self buildRefreshButton.
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #refreshCalendars;
		label: ('{1}' asText format: {Character startOfHeader asText addAttribute: anchorToImage});
		frame: (0.14 @ 0 corner: 0.17 @ 0.05);
		yourself