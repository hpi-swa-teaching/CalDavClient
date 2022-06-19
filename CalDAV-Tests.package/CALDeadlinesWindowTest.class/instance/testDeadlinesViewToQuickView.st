testing
testDeadlinesViewToQuickView

	| quickViewMorph cal firstNumberOfDeadlinesViews firstNumberOfQuickViews secondNumberOfDeadlinesViews secondNumberOfQuickViews |
	
	cal := CALDeadlinesWindow openWith: deadlinesView app.
	firstNumberOfDeadlinesViews :=(self world submorphs select: [:m | m model class = CALDeadlinesWindow]) size.
	firstNumberOfQuickViews := (self world submorphs select: [:m | m model class = CALQuickView]) size.
	quickViewMorph := cal model openQuickView.
	secondNumberOfDeadlinesViews := (self world submorphs select: [:m | m model class = CALDeadlinesWindow]) size.
	secondNumberOfQuickViews := (self world submorphs select: [:m | m model class = CALQuickView]) size.
	self assert: (firstNumberOfDeadlinesViews = (secondNumberOfDeadlinesViews + 1) 
				and: [firstNumberOfQuickViews = (secondNumberOfQuickViews - 1)]).
	quickViewMorph abandon