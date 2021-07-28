toolbuilder
buildAppButtonWith: aBuilder

	| anchorToImage |
	anchorToImage := TextAnchor new anchoredMorph: self buildAppButton.
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openApp;
		label: ('{1}' asText format: {Character startOfHeader asText addAttribute: anchorToImage});
		enabled: true;
		frame: (0.5 @ 0 corner: 1 @ 0.1);
		yourself