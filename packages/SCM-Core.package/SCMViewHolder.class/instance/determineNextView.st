loading
determineNextView

	| viewTypesKeys index |
	
	viewTypesKeys := self viewClasses keys.
	index := viewTypesKeys indexOf: self currentView.
	
	^ viewTypesKeys at: (self getNextWrapped: index withMaxIndex: viewTypesKeys size)