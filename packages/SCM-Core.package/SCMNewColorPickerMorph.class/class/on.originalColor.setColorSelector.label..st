initialization
on: aModel originalColor: aColor setColorSelector: aColorSetter label: aLabel
	
	| colorPicker dialogWindow |
	
	colorPicker := self 
		on: aModel
		originalColor: aColor
		setColorSelector: aColorSetter.
	dialogWindow := aModel topView.
	(colorPicker openInWindowLabeled: aLabel)
		extent: 350 @ 300;
		position: (dialogWindow width + dialogWindow position x) @ (dialogWindow height * 0.5 + dialogWindow position y).
		
	^ colorPicker