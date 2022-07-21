toolbuilder
buildWith: aBuilder

	| newWindow |

	newWindow := aBuilder pluggableWindowSpec new.
	newWindow
		model: self;
		label: #windowTitle;
		children: OrderedCollection new;
		extent: 200 @ 140.
	newWindow children
		addAll: (self windowFields: aBuilder).
	^ aBuilder build: newWindow