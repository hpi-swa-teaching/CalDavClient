toolbuilder
buildQuickViewButton: aBuilder

	| anchorToImage |
	anchorToImage := TextAnchor new anchoredMorph: self buildQuickViewButton.
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openQuickView;
		label: ('{1}' asText format: {Character startOfHeader asText addAttribute: anchorToImage});
		enabled: true;
		frame: (0.96 @ 0 corner: 0.995 @ 0.05);
		yourself