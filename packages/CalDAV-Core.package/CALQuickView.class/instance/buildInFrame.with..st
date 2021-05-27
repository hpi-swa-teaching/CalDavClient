as yet unclassified
buildInFrame: aFrame with: aBuilder

	| newPanel |

	newPanel := aBuilder pluggablePanelSpec new.
	newPanel
		model: self;
		name: 'dayPanel';
		frame: aFrame;
		children: OrderedCollection new.
		
	newPanel children
		add: (self buildEventListWith: aBuilder).	  	
	
	^ newPanel