toolbuilder
buildWith: aBuilder

	| newWindow |

	newWindow := aBuilder pluggableWindowSpec new
		model: self;
		label: #windowTitle;
		children: OrderedCollection new;
		extent: self defaultExtent;
		yourself.
	newWindow children addAll: (self windowFields: aBuilder).
	
	^ aBuilder build: newWindow