testing
testButtonsExistence

	self testButtonsExistenceBy: #buildAppButtonWith: with: 'calendar' and: #openApp.
	self testButtonsExistenceBy: #buildQuickViewButtonWith: with: 'list' and: #openQuickView