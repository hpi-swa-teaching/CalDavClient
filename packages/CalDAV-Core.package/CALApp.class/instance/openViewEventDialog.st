as yet unclassified
openViewEventDialog

	| dialogWindow |
	
	dialogWindow := CALViewEventDialog openEvent: self currentlySelectedEvent forParent: self.
	dialogWindow position: self topView position + (self topView extent * 0.5 - (dialogWindow extent * 0.5)).
	
	^ dialogWindow

