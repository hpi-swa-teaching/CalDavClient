as yet unclassified
buildWith: aBuilder

	| newWindow |

	newWindow := aBuilder pluggableWindowSpec new.
	newWindow
		model: self;
		label: 'Week View';
		children: OrderedCollection new.
		
	newWindow children
		add: (self buildWeekPaneWith: aBuilder).
	
	^ aBuilder build: newWindow
			