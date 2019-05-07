testing
testSelectionFileNameIsNotChangedByDefault

	self assert: CALApp new selectionFileName equals: 'selection' description: 'Expected selection file name to be ''selection'''