as yet unclassified
buildSpec: aBuilder

	| content |

	content := aBuilder pluggablePanelSpec new.
	content
		model: self;
		name: 'dayGrid';
		frame: (0.1  @ 0.1 corner: 1@1);
		children: OrderedCollection new.
		
	content children
		addAll: (self buildEventBlocks: aBuilder).
	
	^ content
			