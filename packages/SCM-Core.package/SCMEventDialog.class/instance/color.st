actions
color

	^ self eventData at: #color ifAbsentPut: [self defaultEventColor]