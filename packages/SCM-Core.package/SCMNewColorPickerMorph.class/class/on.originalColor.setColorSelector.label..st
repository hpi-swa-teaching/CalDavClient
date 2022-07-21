create
on: aModel originalColor: aColor setColorSelector: aColorSetter label: aLabel
	
	| colorPicker dialogWindow |
	
	colorPicker := self on: aModel
		originalColor: aColor
		setColorSelector: aColorSetter.
	dialogWindow := aModel topView.
	(colorPicker openInWindowLabeled: aLabel)
		extent: 350 @ 300;
		model: colorPicker;
		paneColor:  (Color r: 0.92 g: 0.92 b: 0.92); "call to model: sets paneColor to nil which causes problems..."
		position: (dialogWindow width + dialogWindow position x) @ (dialogWindow height * 0.5 + dialogWindow position y); yourself.
		
	^ colorPicker