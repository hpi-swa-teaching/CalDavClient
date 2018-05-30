CalendarMorph
dayInitialsRow
	| newRow |
	newRow := self newRow.
	Week dayNames
		do: [:dayName|
			newRow addMorphBack: (TextMorph new 
				contentsWrapped: dayName translated first asString;
				textColor: self labelsDefaultColor;
				autoFit: false;
				width: 30;
				centered;
				lock)]
		separatedBy: [newRow addMorphBack: AlignmentMorph newVariableTransparentSpacer].
	^newRow 