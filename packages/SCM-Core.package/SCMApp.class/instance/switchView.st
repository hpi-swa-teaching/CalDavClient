initialization
switchView

	(self view class = SCMAgenda)
		ifTrue: [
				self view abandon.
				self view: SCMWeekView new.
				self dockingBar view: self view. 
				self addMorphBack: self view. ]
		ifFalse: [
				self view abandon.
				self view: SCMAgenda new.
				self dockingBar view: self view. 
				self addMorphBack: self view. ]