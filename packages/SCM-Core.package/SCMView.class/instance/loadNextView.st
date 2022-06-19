accessing
loadNextView

	| viewTypesKeys index |
	
	viewTypesKeys := self viewTypes keysInOrder.
	index := viewTypesKeys indexOf: self currentView.
	self load: (viewTypesKeys
		at: (self getNextWrapped: index withLimit: viewTypesKeys size))