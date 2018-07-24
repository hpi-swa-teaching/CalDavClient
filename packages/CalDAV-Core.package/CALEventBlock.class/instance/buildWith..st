as yet unclassified
buildWith: aBuilder

	^ aBuilder pluggableActionButtonSpec new
		model: self;
		label: self event title;
		action: #openEditEventDialog;
		color: self color;
		frame: self frame