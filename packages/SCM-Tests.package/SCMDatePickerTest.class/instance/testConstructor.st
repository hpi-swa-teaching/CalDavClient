testing
testConstructor

	self assert: (self datePicker isKindOf: SCMDatePicker).
	self assert: (self datePicker owner label = self defaultLabel).
	self assert: (self datePicker owner position <= (((self eventDialog width + self eventDialog position x) @ (self eventDialog height * 0.3 + self eventDialog position y)) + 1)).
	self assert: (self datePicker owner position >= (((self eventDialog width + self eventDialog position x) @ (self eventDialog height * 0.3 + self eventDialog position y)) - 1)).
	self assert: (self datePicker owner extent = (self datePicker extent + 10)).