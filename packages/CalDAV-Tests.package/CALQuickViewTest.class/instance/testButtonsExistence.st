testing
testButtonsExistence

	self testButtonsExistenceBy: #buildAddEventButtonWith: with: 'add' and: #openAddEventDialog.
	self testButtonsExistenceBy: #buildAppButtonWith: with: 'calendar' and: #openApp.
	self testButtonsExistenceBy: #buildDeadlinesViewButtonWith: with: 'hourglass' and: #openDeadlinesView.
	self testButtonsExistenceBy: #buildRefreshButtonWith: with: 'refresh' and: #updateQuickView