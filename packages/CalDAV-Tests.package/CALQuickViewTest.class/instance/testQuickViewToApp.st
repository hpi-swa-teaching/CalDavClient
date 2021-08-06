testing
testQuickViewToApp

	| appMorph cal firstNumberOfQuickViews firstNumberOfApps secondNumberOfQuickViews secondNumberOfApps |

	cal := CALQuickView 
			openDay: Time current asDate 
			for: quickView app.
	firstNumberOfQuickViews := (self world submorphs select: [:m | m model class = CALQuickView]) size.
	firstNumberOfApps := (self world submorphs select: [:m | m model class = CALApp]) size.
	appMorph := cal model openApp.
	secondNumberOfQuickViews := (self world submorphs select: [:m | m model class = CALQuickView]) size.
	secondNumberOfApps := (self world submorphs select: [:m | m model class = CALApp]) size.
	self assert: (firstNumberOfQuickViews = (secondNumberOfQuickViews + 1)
				and: [firstNumberOfApps = (secondNumberOfApps - 1)]).
	appMorph abandon