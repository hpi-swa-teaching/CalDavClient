initialization
get

	^ Smalltalk at: #SCMGlobalCalendarRepository ifAbsentPut: [self basicNew
			initialize;
			yourself]