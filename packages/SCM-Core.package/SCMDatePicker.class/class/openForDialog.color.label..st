initialization
openForDialog: aDialog color: aColor label: aLabel

	| datePicker dialogWindow |
	
	dialogWindow := aDialog topView.
	datePicker := self new
		color: aColor;
		yourself.
	(datePicker openInWindowLabeled: aLabel) 
		extent: datePicker extent + (10 @ 40);
		model: datePicker;
		position: (dialogWindow width + dialogWindow position x) @ (dialogWindow height * 0.3 + dialogWindow position y).
		
	^ datePicker