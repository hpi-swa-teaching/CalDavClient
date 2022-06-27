create
on: objectToHaveItsColorSet originalColor: originalColor setColorSelector: colorSetterSymbol label: aLabel
	
	| colorPicker dialogWindow |
	colorPicker := self on: objectToHaveItsColorSet
		originalColor: originalColor
		setColorSelector: colorSetterSymbol.
	dialogWindow := objectToHaveItsColorSet topView.
	(colorPicker openInWindowLabeled: aLabel) 
		extent: dialogWindow extent / 2;
		position: (dialogWindow width + dialogWindow position x) @ (dialogWindow height * 0.5 + dialogWindow position y).
	^ colorPicker