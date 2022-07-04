create
on: anObject originalColor: aColor setColorSelector: aColorSetter label: aLabel
	
	| colorPicker dialogWindow |
	colorPicker := self on: anObject
		originalColor: aColor
		setColorSelector: aColorSetter.
	dialogWindow := anObject topView.
	(colorPicker openInWindowLabeled: aLabel) 
		extent: dialogWindow extent / 2;
		position: (dialogWindow width + dialogWindow position x) @ (dialogWindow height * 0.5 + dialogWindow position y).
	^ colorPicker