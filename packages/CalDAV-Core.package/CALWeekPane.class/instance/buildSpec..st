as yet unclassified
buildSpec: aBuilder

	| content |

	content := aBuilder pluggablePanelSpec new.
	content
		model: self;
		children: OrderedCollection new.
		
	content children
		add: (self buildNextWeekButton: aBuilder);
		add: (self buildPreviousWeekButton: aBuilder);
		add: (self buildWeekTextWith: aBuilder);
		add: (self buildTimelineWith: aBuilder);
		addAll: (self buildDayLineWith: aBuilder);
		addAll: (self buildDayGridsWith: aBuilder).
	
	^ content
			