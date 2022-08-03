testing
testConstructor

	self assert: (self colorPicker isKindOf: SCMNewColorPickerMorph).
	self assert: self colorPicker owner label equals: self defaultLabel.
	
	self assert: (self colorPicker owner position <= (((self eventDialog width + self eventDialog position x) @ (self eventDialog height * 0.5 + self eventDialog position y)) + (1 @ 1))).
	
	self assert: (self colorPicker owner position >= (((self eventDialog width + self eventDialog position x) @ (self eventDialog height * 0.5 + self eventDialog position y)) - (1 @ 1))).
	
	self assert: self colorPicker owner extent equals: 350 @ 300

	
