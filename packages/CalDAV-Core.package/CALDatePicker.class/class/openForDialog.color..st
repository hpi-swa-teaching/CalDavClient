opening
openForDialog: aDialog color: aColor

	| datePicker dialogWindow |
	
	dialogWindow := aDialog topView.
	datePicker := CALDatePicker new color: aColor.
	(datePicker openInWindowLabeled: 'Date Picker') 
		extent: datePicker extent + 30;
		position: (dialogWindow width + dialogWindow position x) @ (dialogWindow height * 0.3 + dialogWindow position y).
	
	^ datePicker