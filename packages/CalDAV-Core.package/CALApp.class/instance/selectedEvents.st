accessing
selectedEvents

	| events |

	events := OrderedCollection new.
	self calendarsToShow do: [:each | events addAll: (self calendarNamed: each) events].
	^ events