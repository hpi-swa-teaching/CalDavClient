opening
openForDialog: aDialog

	| datePicker dialogWindow |
	
	dialogWindow := aDialog topView.
	datePicker := CALDatePicker new.
	(datePicker openInWindowLabeled: 'Pick begin date') 
		extent: datePicker extent + 10;
		position: (dialogWindow position x + dialogWindow width) @ (dialogWindow position y + (dialogWindow height * 0.3)).
	
	^ datePicker