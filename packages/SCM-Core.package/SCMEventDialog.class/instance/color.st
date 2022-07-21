accessing
color

	^ self eventData at: #color ifAbsentPut: [self defaultEventColor]