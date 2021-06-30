toolbuilder
buildWeekViewButton: aBuilder
	
	| anchorToImage |
	anchorToImage := TextAnchor new anchoredMorph: self buildWeekViewButton.
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openWeekView;
		label: ('{1}' asText format: {Character startOfHeader asText addAttribute: anchorToImage});
		enabled: #isWeekViewNotActive;
		frame: (0.855 @ 0 corner: 0.885 @ 0.05);
		yourself