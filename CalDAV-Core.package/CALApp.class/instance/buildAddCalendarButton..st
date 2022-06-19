toolbuilder
buildAddCalendarButton: aBuilder

	| anchorToImage |
	
	anchorToImage := TextAnchor new anchoredMorph: self buildAddCalendarButton.
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openAddCalendarDialog;
		label: ('{1}' asText format: {Character startOfHeader asText addAttribute: anchorToImage});
		frame: (0 @ 0 corner: 0.03 @ 0.05);
		yourself