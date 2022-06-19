testing
testDeadlinesViewToApp

	| appMorph cal firstNumberOfDeadlinesViews firstNumberOfApps secondNumberOfDeadlinesViews secondNumberOfApps |
	
	cal := CALDeadlinesWindow openWith: deadlinesView app.
	firstNumberOfDeadlinesViews := (self world submorphs select: [:m | m model class = CALDeadlinesWindow]) size.
	firstNumberOfApps := (self world submorphs select: [:m | m model class = CALApp]) size.
	appMorph := cal model openApp.
	secondNumberOfDeadlinesViews := (self world submorphs select: [:m | m model class = CALDeadlinesWindow]) size.
	secondNumberOfApps := (self world submorphs select: [:m | m model class = CALApp]) size.
	self assert: (firstNumberOfDeadlinesViews = (secondNumberOfDeadlinesViews + 1)
				and: [firstNumberOfApps = (secondNumberOfApps - 1)]).
	appMorph abandon