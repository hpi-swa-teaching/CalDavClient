opening
openForDialog: aDialog color: aColor label: aLabel

	| datePicker dialogWindow |
	
	dialogWindow := aDialog topView.
	datePicker := CALDatePicker new color: aColor.
	(datePicker openInWindowLabeled: aLabel) 
		extent: datePicker extent + 30;
		position: (dialogWindow position x + dialogWindow width) @ (dialogWindow position y + (dialogWindow height * 0.3)).
	
	^ datePicker