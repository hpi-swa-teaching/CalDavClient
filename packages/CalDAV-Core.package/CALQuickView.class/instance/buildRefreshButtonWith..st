toolbuilder
buildRefreshButtonWith: aBuilder
	
	| anchorToImage |
	
	anchorToImage := TextAnchor new anchoredMorph: self buildRefreshButton.
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #updateQuickView;
		label: ('{1}' asText format: {Character startOfHeader asText addAttribute: anchorToImage});
		frame: (0.25 @ 0 corner: 0.5 @ 0.1);
		yourself