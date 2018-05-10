as yet unclassified
buildWith: builder

	| windowSpec titleLabel |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'New Event';
		extent: 500@300;
		children: OrderedCollection new.
		
	titleLabel := builder pluggableTextSpec new.
	titleLabel
		model: self;
		frame: (0@0 corner: 0.1@0.1).
	windowSpec children add: titleLabel.		
		
	^builder build: windowSpec