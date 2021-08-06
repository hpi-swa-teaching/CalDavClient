toolbuilder
buildWith: aBuilder

	^ aBuilder pluggableActionButtonSpec new
		model: self;
		label: self event title;
		action: #openEventDetails;
		color: self color;
		frame: self frame;
		yourself 