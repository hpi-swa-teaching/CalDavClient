testing
testIconAllocation

	self testIconAllocationBy: #buildAddEventButtonWith: with: 'add'.
	self testIconAllocationBy: #buildAppButtonWith: with: 'calendar'.
	self testIconAllocationBy: #buildDeadlinesViewButtonWith: with: 'hourglass'
