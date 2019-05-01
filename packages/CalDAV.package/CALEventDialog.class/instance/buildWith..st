toolbuilding
buildWith: aBuilder

	|newWindow|

	newWindow := aBuilder pluggableWindowSpec new.
	newWindow
		model: self;
		label: #windowTitle;
		children: OrderedCollection new.
		
	newWindow children 
		addAll: (self windowFields: aBuilder).
	
	^ aBuilder build: newWindow
			