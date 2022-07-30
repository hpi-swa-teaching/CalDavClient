accessing
currentView: aSymbol
"whenever view changes view must be reloaded"
	self basicCurrentView: aSymbol.
	self reload