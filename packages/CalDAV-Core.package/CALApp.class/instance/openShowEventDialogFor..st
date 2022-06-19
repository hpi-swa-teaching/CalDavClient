subwindows
openShowEventDialogFor: aCALEvent

	| dialogWindow |
	
	dialogWindow := CALShowEventDialog openEvent: aCALEvent forParent: self.
	dialogWindow position: self topView position + (self topView extent * 0.5 - (dialogWindow extent * 0.5))