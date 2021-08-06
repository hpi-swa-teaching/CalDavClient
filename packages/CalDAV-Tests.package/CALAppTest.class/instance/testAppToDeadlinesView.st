testing
testAppToDeadlinesView

	| cal firstNumberOfApps firstNumberOfDeadlinesViews secondNumberOfApps secondNumberOfDeadlinesViews |
	
	cal := app class open.
	firstNumberOfApps :=(self world submorphs select: [:m | m model class = CALApp]) size.
	firstNumberOfDeadlinesViews := (self world submorphs select: [:m | m model class = CALDeadlinesWindow]) size.
	cal model openDeadlinesView.
	secondNumberOfApps := (self world submorphs select: [:m | m model class = CALApp]) size.
	secondNumberOfDeadlinesViews := (self world submorphs select: [:m | m model class = CALDeadlinesWindow]) size.
	CALDeadlinesWindow allInstances last myDependents first abandon.
	self assert: ((firstNumberOfApps = (secondNumberOfApps + 1)) and: [firstNumberOfDeadlinesViews = (secondNumberOfDeadlinesViews - 1)])
	