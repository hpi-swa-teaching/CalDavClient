testing
testCreateFormButton
	
	|button|
     button := self subject findByLabel: 'Create Event'.
	self assert: button actionSelector equals: #createForm.
     self assert: button target class equals: SCMEventForm