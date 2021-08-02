testing
testQuickViewToApp

	| aMorph world cal firstNumberOfQuickViews firstNumberOfApps secondNumberOfQuickViews secondNumberOfApps |
	aMorph := Morph new openInWorld.
	world := aMorph world.
	cal := CALQuickView openDay: Time current asDate for: quickView app.
	firstNumberOfQuickViews :=(world submorphs select: [:m | m model class = CALQuickView]) size.
	firstNumberOfApps := (world submorphs select: [:m | m model class = CALApp]) size.
	cal model openApp.
	secondNumberOfQuickViews := (world submorphs select: [:m | m model class = CALQuickView]) size.
	secondNumberOfApps := (world submorphs select: [:m | m model class = CALApp]) size.
	self assert: ((firstNumberOfQuickViews = (secondNumberOfQuickViews + 1)) and: [firstNumberOfApps = (secondNumberOfApps - 1)]).
	aMorph delete.
	CALApp allInstances last myDependents first abandon