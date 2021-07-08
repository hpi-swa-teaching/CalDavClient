toolbuilder
buildDeadlinesViewButtonWith: aBuilder
	
	| anchorToImage |
	anchorToImage := TextAnchor new anchoredMorph: self buildDeadlinesViewButton.
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openDeadlinesView;
		label: ('{1}' asText format: {Character startOfHeader asText addAttribute: anchorToImage});
		enabled: true;
		frame: (0 @ 0 corner: 0.5 @ 0.1);
		yourself