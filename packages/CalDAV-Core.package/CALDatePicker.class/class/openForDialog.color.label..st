opening
openForDialog: aDialog color: aColor label: aLabel

	| datePicker dialogWindow |
	
	dialogWindow := aDialog topView.
	datePicker := CALDatePicker new color: aColor.
	(datePicker openInWindowLabeled: aLabel) 
		extent: datePicker extent + 30;
		position: (dialogWindow width + dialogWindow position x) @ (dialogWindow height * 0.3 + dialogWindow position y).
	^ datePicker