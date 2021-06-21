toolbuilder
buildSpec: aBuilder

	| content |

	content := aBuilder pluggablePanelSpec new.
	content
		model: self;
		name: 'deadlineEvents';
		children: OrderedCollection new.
	content children add: (self buildEventList: aBuilder).
	^ content
			