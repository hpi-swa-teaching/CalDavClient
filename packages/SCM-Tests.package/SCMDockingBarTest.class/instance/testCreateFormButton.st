testing
testCreateFormButton
	
	|button|
     button := self subject findByClass: SimpleButtonMorph.
     self assert: button label equals: 'Create Event'.
	self assert: button actionSelector equals: #createForm.
     self assert: button target class equals: SCMEventForm