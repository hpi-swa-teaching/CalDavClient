testing
testAppToDeadlinesView

	| aMorph world cal firstNumberOfApps firstNumberOfDeadlinesViews secondNumberOfApps secondNumberOfDeadlinesViews |
	aMorph := Morph new openInWorld.
	world := aMorph world.
	cal := app class open.
	firstNumberOfApps :=(world submorphs select: [:m | m model class = CALApp]) size.
	firstNumberOfDeadlinesViews := (world submorphs select: [:m | m model class = CALDeadlinesWindow]) size.
	cal model openDeadlinesView.
	secondNumberOfApps := (world submorphs select: [:m | m model class = CALApp]) size.
	secondNumberOfDeadlinesViews := (world submorphs select: [:m | m model class = CALDeadlinesWindow]) size.
	self assert: ((firstNumberOfApps = (secondNumberOfApps + 1)) and: [firstNumberOfDeadlinesViews = (secondNumberOfDeadlinesViews - 1)]).
	aMorph delete.
	CALDeadlinesWindow allInstances last myDependents first abandon