CalendarMorph
buildMonthRow

	^ self newRow
		addMorphBack: ((self newButtonWithContents: '<-') actionSelector: #previousMonth; target: self);
		addMorphBack: AlignmentMorph newVariableTransparentSpacer;
		addMorphBack: (date month name translated asMorph color: self labelsDefaultColor);
		addMorphBack: AlignmentMorph newVariableTransparentSpacer;
		addMorphBack: ((self newButtonWithContents: '->') actionSelector: #nextMonth; target: self)