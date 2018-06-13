subwindows
openAddEventDialog

	| dialogWindow |
	
	dialogWindow := CALAddEventDialog openForApp: self.
	dialogWindow position: self topView position + (self topView extent * 0.5 - (dialogWindow extent * 0.5))