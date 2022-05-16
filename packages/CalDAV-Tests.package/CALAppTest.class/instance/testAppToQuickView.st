testing
testAppToQuickView

	| cal firstNumberOfApps firstNumberOfQuickViews secondNumberOfApps secondNumberOfQuickViews |
	cal := app class open.
	firstNumberOfApps :=(self world submorphs select: [:m | m model class = CALApp]) size.
	firstNumberOfQuickViews := (self world submorphs select: [:m | m model class = CALQuickView]) size.
	cal model openQuickView.
	secondNumberOfApps := (self world submorphs select: [:m | m model class = CALApp]) size.
	secondNumberOfQuickViews := (self world submorphs select: [:m | m model class = CALQuickView]) size.
	CALQuickView allInstances last myDependents first abandon.
	self assert: ((firstNumberOfApps = (secondNumberOfApps + 1)) and: [firstNumberOfQuickViews = (secondNumberOfQuickViews - 1)])
	