toolbuilding
buildInFrame: aFrame with: aBuilder

	| newPanel |

	newPanel := aBuilder pluggablePanelSpec new.
	newPanel
		model: self;
		name: 'dayPanel';
		frame: aFrame;
		children: OrderedCollection new.
		
	newPanel children
		add: (self buildDayButtonWith: aBuilder);
		add: (self buildEventListWith: aBuilder);	  	
		add: (self buildAddEventButtonWith: aBuilder).
	
	^ newPanel