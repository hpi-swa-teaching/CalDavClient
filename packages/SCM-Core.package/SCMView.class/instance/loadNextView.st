accessing
loadNextView

	| viewTypesKeys index |
	viewTypesKeys := self viewTypes keysInOrder.
	index := viewTypesKeys indexOf: self currentView.
	self load: (viewTypesKeys at: ((index \\\ viewTypesKeys size) + 1))