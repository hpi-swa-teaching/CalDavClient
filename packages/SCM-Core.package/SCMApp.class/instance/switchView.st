initialization
switchView

	(self view class = SCMAgenda)
		ifTrue: [
				self view abandon.
				self view: SCMWeekView new.
				self window extent: 1600 @ 835.
				self addMorphBack: self view]
		ifFalse: [
				self view abandon.
				self view: SCMAgenda new.
				self window extent: 800 @ 1000.
				self addMorphBack: self view]