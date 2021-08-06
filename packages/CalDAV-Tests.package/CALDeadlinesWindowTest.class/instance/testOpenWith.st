testing
testOpenWith

	| windowMorph |
	
	windowMorph := CALDeadlinesWindow openWith: CALApp new.
	self assert: (windowMorph class = PluggableSystemWindow).
	self assert: (windowMorph model class = CALDeadlinesWindow).
	windowMorph delete