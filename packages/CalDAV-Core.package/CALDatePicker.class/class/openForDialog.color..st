opening
openForDialog: aDialog color: aColor

	| datePicker dialogWindow |
	
	dialogWindow := aDialog topView.
	datePicker := CALDatePicker new color: aColor.
	(datePicker openInWindowLabeled: 'Date Picker') 
		extent: datePicker extent + 30;
		position: (dialogWindow position x + dialogWindow width) @ (dialogWindow position y + (dialogWindow height * 0.3)).
	
	^ datePicker