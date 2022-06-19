toolbuilder
buildEditCalendarButton: aBuilder

	| anchorToImage |
	
	anchorToImage := TextAnchor new anchoredMorph: self buildEditCalendarButton.
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openCalendarColorEditor;
		label: ('{1}' asText format: {Character startOfHeader asText addAttribute: anchorToImage});
		frame: (0.175 @ 0 corner: 0.205 @ 0.05);
		yourself