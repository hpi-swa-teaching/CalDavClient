testing
testOpenWith

	| windowMorph |
	
	windowMorph := CALDeadlinesWindow openWith: self app.
	self assert: (windowMorph class = PluggableSystemWindow).
	self assert: (windowMorph model class = CALDeadlinesWindow).
	windowMorph delete