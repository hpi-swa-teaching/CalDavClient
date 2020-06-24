as yet unclassified
initialize

super initialize.
self date: Date today.
dateLabel := (PHLabel new)
	minSize: 175@20.
self add: dateLabel.
events := (OrderedCollection new).
"sefl label: self date weekday, self date."