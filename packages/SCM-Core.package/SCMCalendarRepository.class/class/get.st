initialization
get

	^ Smalltalk at: #SCMGlobalCalendarRepository ifAbsentPut: [self new]