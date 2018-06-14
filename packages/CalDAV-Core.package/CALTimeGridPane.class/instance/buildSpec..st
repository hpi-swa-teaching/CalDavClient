as yet unclassified
buildSpec: aBuilder

	| content |

	content := aBuilder pluggablePanelSpec new.
	content
		model: self;
		children: OrderedCollection new.
		
	content children
		addAll: (self buildTimeLabels: aBuilder).
	
	^ content
			