toolbuilding
buildStandardFields: aBuilder

	^ {self buildTitleText: aBuilder.
		self buildDescriptionText: aBuilder.
		self buildBeginYearText: aBuilder.
		self buildBeginMonthText: aBuilder.
		self buildBeginDayText: aBuilder.
		self buildBeginHourText: aBuilder.
		self buildBeginMinuteText: aBuilder.
		self buildEndYearText: aBuilder.
		self buildEndMonthText: aBuilder.
		self buildEndDayText: aBuilder.
		self buildEndHourText: aBuilder.
		self buildEndMinuteText: aBuilder.
		self buildLocationText: aBuilder.
		self buildParticipantsText: aBuilder}