as yet unclassified
buildSpec: aBuilder

	| content |

	content := aBuilder pluggablePanelSpec new.
	content
		model: self;
		name: 'deadlineEvents';
		padding:  20;
		children: OrderedCollection new.
		
		
	content children
		addAll: (self buildDeadlinesEventBlocks: aBuilder).
		
	
	^ content
			