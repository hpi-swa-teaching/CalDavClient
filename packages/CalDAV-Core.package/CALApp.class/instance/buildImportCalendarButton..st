toolbuilder
buildImportCalendarButton: aBuilder
	
	| anchorToImage |
	
	anchorToImage := TextAnchor new anchoredMorph: self buildImportCalendarButton.
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #importWebDAVCalendar;
		label: ('{1}' asText format: {Character startOfHeader asText addAttribute: anchorToImage});
		frame: (0.07 @ 0 corner: 0.1 @ 0.05);
		yourself