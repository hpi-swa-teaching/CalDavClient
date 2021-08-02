testing
testQuickViewToDeadlinesView

	| aMorph world cal firstNumberOfQuickViews firstNumberOfDeadlinesViews secondNumberOfQuickViews secondNumberOfDeadlinesViews |
	aMorph := Morph new openInWorld.
	world := aMorph world.
	cal := CALQuickView openDay: Time current asDate for: quickView app.
	firstNumberOfQuickViews :=(world submorphs select: [:m | m model class = CALQuickView]) size.
	firstNumberOfDeadlinesViews := (world submorphs select: [:m | m model class = CALDeadlinesWindow]) size.
	cal model openDeadlinesView.
	secondNumberOfQuickViews := (world submorphs select: [:m | m model class = CALQuickView]) size.
	secondNumberOfDeadlinesViews := (world submorphs select: [:m | m model class = CALDeadlinesWindow]) size.
	self assert: ((firstNumberOfQuickViews = (secondNumberOfQuickViews + 1)) and: [firstNumberOfDeadlinesViews = (secondNumberOfDeadlinesViews - 1)]).
	aMorph delete.
	CALDeadlinesWindow allInstances last myDependents first abandon