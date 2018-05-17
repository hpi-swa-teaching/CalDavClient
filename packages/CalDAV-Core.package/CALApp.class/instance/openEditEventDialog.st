as yet unclassified
openEditEventDialog

	| dialogWindow |
	
	dialogWindow := CALEditEventDialog openEvent: self currentlySelectedEvent forParent: self.
	dialogWindow position: self topView position + (self topView extent * 0.5 - (dialogWindow extent * 0.5)).
	
	^ dialogWindow

