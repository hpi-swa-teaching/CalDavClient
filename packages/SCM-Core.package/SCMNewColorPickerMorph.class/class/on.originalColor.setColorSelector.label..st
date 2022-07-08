create
on: aModel originalColor: aColor setColorSelector: aColorSetter label: aLabel
	
	| colorPicker dialogWindow |
	colorPicker := self on: aModel
		originalColor: aColor
		setColorSelector: aColorSetter.
	dialogWindow := aModel topView.
	(colorPicker openInWindowLabeled: aLabel) 
		extent: dialogWindow extent / 2;
		position: (dialogWindow width + dialogWindow position x) @ (dialogWindow height * 0.5 + dialogWindow position y).
	^ colorPicker