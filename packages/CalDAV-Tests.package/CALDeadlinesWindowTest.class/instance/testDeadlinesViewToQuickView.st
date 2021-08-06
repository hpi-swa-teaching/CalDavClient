testing
testDeadlinesViewToQuickView

	| aMorph world cal firstNumberOfDeadlinesViews firstNumberOfQuickViews secondNumberOfDeadlinesViews secondNumberOfQuickViews |
	
	aMorph := Morph new openInWorld.
	world := aMorph world.
	cal := CALDeadlinesWindow openWith: deadlinesView app.
	firstNumberOfDeadlinesViews :=(world submorphs select: [:m | m model class = CALDeadlinesWindow]) size.
	firstNumberOfQuickViews := (world submorphs select: [:m | m model class = CALQuickView]) size.
	cal model openQuickView.
	secondNumberOfDeadlinesViews := (world submorphs select: [:m | m model class = CALDeadlinesWindow]) size.
	secondNumberOfQuickViews := (world submorphs select: [:m | m model class = CALQuickView]) size.
	self assert: ((firstNumberOfDeadlinesViews = (secondNumberOfDeadlinesViews + 1)) and: [firstNumberOfQuickViews = (secondNumberOfQuickViews - 1)]).
	aMorph abandon.
	CALQuickView allInstances last myDependents first abandon