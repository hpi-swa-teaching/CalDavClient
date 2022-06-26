accessing
actionSelector: aSymbolOrString

	"to do: do we need to handle nil values? Linter complains" 
 	(aSymbolOrString isNil
		or: ['nil' = aSymbolOrString
		or: [aSymbolOrString isEmpty]])
			ifTrue: [^ actionSelector := nil].

 	actionSelector := aSymbolOrString asSymbol