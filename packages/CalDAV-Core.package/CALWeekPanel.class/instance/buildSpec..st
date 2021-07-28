toolbuilder
buildSpec: aBuilder

	| content |

	content := aBuilder pluggablePanelSpec new.
	content
		model: self;
		name: 'weekPanel';
		children: OrderedCollection new.
	content children
		add: (self buildNextWeekButton: aBuilder);
		add: (self buildPreviousWeekButton: aBuilder);
		add: (self buildWeekTextWith: aBuilder);
		add: (self buildTimelineWith: aBuilder);
		add: (self buildWeekGridWith: aBuilder).
	^ content