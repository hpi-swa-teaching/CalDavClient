testing
testDeadlinesViewToApp

	| aMorph world cal firstNumberOfDeadlinesViews firstNumberOfApps secondNumberOfDeadlinesViews secondNumberOfApps |
	aMorph := Morph new openInWorld.
	world := aMorph world.
	cal := CALDeadlinesWindow openWith: deadlinesView app.
	firstNumberOfDeadlinesViews :=(world submorphs select: [:m | m model class = CALDeadlinesWindow]) size.
	firstNumberOfApps := (world submorphs select: [:m | m model class = CALApp]) size.
	cal model openApp.
	secondNumberOfDeadlinesViews := (world submorphs select: [:m | m model class = CALDeadlinesWindow]) size.
	secondNumberOfApps := (world submorphs select: [:m | m model class = CALApp]) size.
	self assert: ((firstNumberOfDeadlinesViews = (secondNumberOfDeadlinesViews + 1)) and: [firstNumberOfApps = (secondNumberOfApps - 1)]).
	cal delete.
	aMorph abandon.
	CALApp allInstances last myDependents first abandon