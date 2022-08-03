CalendarMorph
dayInitialsRow

	| newRow |

	newRow := self newRow.
	Week dayNames
		do: [:dayName | newRow addMorphBack: (self textOfDayName: dayName)]
		separatedBy: [newRow addMorphBack: AlignmentMorph newVariableTransparentSpacer].
	^ newRow 