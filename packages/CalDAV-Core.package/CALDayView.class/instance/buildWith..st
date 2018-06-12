accessing
buildWith: aBuilder

	|newWindow|

	newWindow := aBuilder pluggableWindowSpec new.
	newWindow
		model: self;
		label: 'Day View';
		children: OrderedCollection new.
		
	newWindow children
		add: (self buildNextDayButton: aBuilder);
		add: (self buildPreviousDayButton: aBuilder).
	
	^ aBuilder build: newWindow
			