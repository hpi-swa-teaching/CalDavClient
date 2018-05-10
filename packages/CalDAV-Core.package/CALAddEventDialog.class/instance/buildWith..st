as yet unclassified
buildWith: aBuilder

	| windowSpec titleLabel |
	windowSpec := aBuilder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'New Event';
		extent: 500@300;
		children: OrderedCollection new.
		
	titleLabel := aBuilder pluggableTextSpec new.
	titleLabel
		model: self;
		frame: (0@0 corner: 0.1@0.1).
	windowSpec children add: titleLabel.		
		
	^aBuilder build: windowSpec