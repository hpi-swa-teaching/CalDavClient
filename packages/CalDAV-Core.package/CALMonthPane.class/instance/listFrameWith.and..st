toolbuilder
listFrameWith: aRow and: aColumn

	| listHeight height textFrame |
	
	height := self monthViewFrame height / 6.
	listHeight := height * self relativeDayListHeight.
	textFrame := self textFrameWith: aRow and: aColumn.
	
	^ (textFrame bottomLeft) corner: (textFrame bottomRight) + (0 @ listHeight)
	
	