initialization
openShowEventDialogFor: aSCMEvent

	| dialogWindow |
	dialogWindow := SCMShowEventDialog 
		openEvent: aSCMEvent 
		for: self generateTempRepository.
	"dialogWindow position: self topView position + (self topView extent * 0.5 - (dialogWindow 	extent * 0.5))"