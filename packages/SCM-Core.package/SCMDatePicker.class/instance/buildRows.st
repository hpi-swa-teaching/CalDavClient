initialization
buildRows

	self
		addMorphBack: self buildYearRow;
		addMorphBack: self buildMonthRow;
		addMorphBack: self dayInitialsRow