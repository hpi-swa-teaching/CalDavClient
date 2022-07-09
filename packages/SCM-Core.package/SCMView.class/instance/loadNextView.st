loading
loadNextView

	| viewTypesKeys index |
	
	viewTypesKeys := self viewClasses keysInOrder.
	index := viewTypesKeys indexOf: self currentView.
	self load: (viewTypesKeys at: (self getNextWrapped: index withLimit: viewTypesKeys size))