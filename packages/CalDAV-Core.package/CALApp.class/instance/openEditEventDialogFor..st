subwindows
openEditEventDialogFor: aCALEvent

	| dialogWindow |
	
	self setSelectedEditableCalendarContaining: aCALEvent.
	dialogWindow := CALEditEventDialog openEvent: aCALEvent forParent: self.
	dialogWindow position: self topView position + (self topView extent * 0.5 - (dialogWindow extent * 0.5))

