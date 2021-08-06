testing
testQuickViewToDeadlinesView

	| deadlinesMorph cal firstNumberOfQuickViews firstNumberOfDeadlinesViews secondNumberOfQuickViews secondNumberOfDeadlinesViews |

	cal := CALQuickView 
			openDay: Time current asDate 
			for: quickView app.
	firstNumberOfQuickViews := (self world submorphs select: [:m | m model class = CALQuickView]) size.
	firstNumberOfDeadlinesViews := (self world submorphs select: [:m | m model class = CALDeadlinesWindow]) size.
	deadlinesMorph := cal model openDeadlinesView.
	secondNumberOfQuickViews := (self world submorphs select: [:m | m model class = CALQuickView]) size.
	secondNumberOfDeadlinesViews := (self world submorphs select: [:m | m model class = CALDeadlinesWindow]) size.
	self assert: (firstNumberOfQuickViews = (secondNumberOfQuickViews + 1) 
				and: [firstNumberOfDeadlinesViews = (secondNumberOfDeadlinesViews - 1)]).
	deadlinesMorph abandon