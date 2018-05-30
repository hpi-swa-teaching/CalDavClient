CalendarMorph
initializeSubmorphs
	| weekRow dateButton |
	self addMorphBack: self buildYearRow;
		 addMorphBack: self buildMonthRow;
		 addMorphBack: self dayInitialsRow.
	date month weeks
		do: [:week | 
			weekRow := self newRow.
			week dates
				do: [:aDate | 
					dateButton := self newDateButtonWithContents: aDate dayOfMonth asString.
					dateButton actionSelector: #date:; 
						 target: self;
						 arguments: {aDate}.
					date = aDate
						ifTrue: [dateButton
								color: (self color
										mixed: 0.5
										with: (self color adjustSaturation: 1 brightness: 1))].
					date month ~= aDate month
						ifTrue: [dateButton color: self color.
							(dateButton findA: StringMorph)
								color: Color gray].
					weekRow addMorphBack: dateButton]
				separatedBy: [weekRow addMorphBack: AlignmentMorph newVariableTransparentSpacer].
			self addMorphBack: weekRow]