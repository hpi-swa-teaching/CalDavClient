as yet unclassified
open
	|pluggableWindow|
	pluggableWindow := self new openInWindowLabeled: 'Calendar'.
	(pluggableWindow instVarNamed: 'label') color: Color black.
	^ pluggableWindow