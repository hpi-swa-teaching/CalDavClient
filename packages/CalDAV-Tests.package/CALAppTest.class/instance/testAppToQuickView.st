testing
testAppToQuickView

	| aMorph world cal firstNumberOfApps firstNumberOfQuickViews secondNumberOfApps secondNumberOfQuickViews |
	aMorph := Morph new openInWorld.
	world := aMorph world.
	cal := app class open.
	firstNumberOfApps :=(world submorphs select: [:m | m model class = CALApp]) size.
	firstNumberOfQuickViews := (world submorphs select: [:m | m model class = CALQuickView]) size.
	cal model openQuickView.
	secondNumberOfApps := (world submorphs select: [:m | m model class = CALApp]) size.
	secondNumberOfQuickViews := (world submorphs select: [:m | m model class = CALQuickView]) size.
	self assert: ((firstNumberOfApps = (secondNumberOfApps + 1)) and: [firstNumberOfQuickViews = (secondNumberOfQuickViews - 1)]).
	aMorph delete.
	CALQuickView allInstances last myDependents first abandon