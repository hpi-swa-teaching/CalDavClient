opening
openForDialog: aDialog

	| datePicker dialogWindow |
	
	dialogWindow := aDialog topView.
	datePicker := CALDatePicker new.
	(datePicker openInWindowLabeled: 'Date Picker') 
		extent: datePicker extent + 20;
		position: (dialogWindow position x + dialogWindow width) @ (dialogWindow position y + (dialogWindow height * 0.3)).
	
	^ datePicker