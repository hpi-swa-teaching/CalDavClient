as yet unclassified
buildTimelineWith: aBuilder

	| content |

	content := aBuilder pluggablePanelSpec new.
	content
		model: self;
		frame: (0 @ self buttonHeight corner: 1@1);
		children: OrderedCollection new.
		
	content children
		addAll: (self buildTimeLabels: aBuilder).
	
	^ content
			