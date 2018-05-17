toolbuilding
buildWith: aBuilder

	|newWindow|

	newWindow := aBuilder pluggableWindowSpec new.
	newWindow
		model: self;
		label: #windowTitle;
		children: (self windowFields: aBuilder).
	^ aBuilder build: newWindow
			