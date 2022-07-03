loading
load: aSCMViewType

	self currentView: aSCMViewType.
	(self viewTypes at: aSCMViewType) load: self