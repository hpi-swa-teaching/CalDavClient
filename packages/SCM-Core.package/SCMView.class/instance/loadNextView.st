accessing
loadNextView

	| viewTypesKeys index |
	viewTypesKeys := self viewTypes keysInOrder.
	index := viewTypesKeys indexOf: self currentView.
	self loadView: (viewTypesKeys at: ((index \\\ viewTypesKeys size) + 1))