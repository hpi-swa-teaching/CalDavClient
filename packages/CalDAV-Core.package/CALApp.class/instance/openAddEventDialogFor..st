subwindows
openAddEventDialogFor: aDate

	| dialogWindow |
	
	dialogWindow := CALAddEventDialog openDate: aDate forParent: self.
	dialogWindow position: self topView position + (self topView extent * 0.5 - (dialogWindow extent * 0.5))