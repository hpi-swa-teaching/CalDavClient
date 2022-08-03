building
dayInitialsRow

	| newRow |

	newRow := self newRow.
	Week dayNames
		do: [:dayName | newRow addMorphBack: (self weekdayRepresentation: dayName)]
		separatedBy: [newRow addMorphBack: AlignmentMorph newVariableTransparentSpacer].
		
	^ newRow