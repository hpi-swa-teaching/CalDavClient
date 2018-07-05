CalendarMorph
buildYearRow

	^ self newRow
		addMorphBack: ((self newButtonWithContents: '<-') actionSelector: #previousYear; target: self);
		addMorphBack: AlignmentMorph newVariableTransparentSpacer;
		addMorphBack: (date year name asMorph color: self labelsDefaultColor);
		addMorphBack: AlignmentMorph newVariableTransparentSpacer;
		addMorphBack: ((self newButtonWithContents: '->') actionSelector: #nextYear; target: self)