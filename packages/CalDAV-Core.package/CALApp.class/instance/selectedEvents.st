accessing
selectedEvents

	| events |

	events := OrderedCollection new.
	self calendarsToShow do: [ :each | events addAll: (self calendars at: each) events].
	^ events