toolbuilder
openDeadlinesView
	
	self myDependents first abandon.
	^ CALDeadlinesWindow openWith: self app
	
