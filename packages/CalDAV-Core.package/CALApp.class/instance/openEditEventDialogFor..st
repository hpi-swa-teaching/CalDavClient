subwindows
openEditEventDialogFor: anEvent

	| dialogWindow |
	
	self setSelectedEditableCalendarContaining: anEvent.
	dialogWindow := CALEditEventDialog openEvent: anEvent forParent: self.
	dialogWindow position: self topView position + (self topView extent * 0.5 - (dialogWindow extent * 0.5))

