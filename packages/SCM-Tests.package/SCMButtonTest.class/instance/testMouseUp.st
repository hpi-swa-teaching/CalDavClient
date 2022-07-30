testing
testMouseUp

	" needs to be fixed"
	self assert: self state equals: false.
	self subject handleEvent: (MouseEvent new
		setType: #mouseUp
		position: self subject position
		buttons: MouseEvent blueButton
		hand: ActiveHand).
	self assert: self state equals: true