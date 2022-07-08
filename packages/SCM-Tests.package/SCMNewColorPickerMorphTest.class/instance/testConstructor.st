accessing
testConstructor

	self assert: (self colorPicker isKindOf: SCMNewColorPickerMorph).
	self assert: (self colorPicker owner label = self defaultLabel).
	self assert: (self colorPicker owner position <= (((self eventDialog width + self eventDialog position x) @ (self eventDialog height * 0.5 + self eventDialog position y)) + 1)).
	self assert: (self colorPicker owner position >= (((self eventDialog width + self eventDialog position x) @ (self eventDialog height * 0.5 + self eventDialog position y)) - 1)).
	self assert: (self colorPicker owner extent <= ((self eventDialog extent / 2) + 1)).
	self assert: (self colorPicker owner extent >= ((self eventDialog extent / 2) - 1)).

	
