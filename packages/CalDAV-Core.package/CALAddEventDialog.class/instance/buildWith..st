toolbuilding
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: #windowTitle;
		children: {
			self buildTitleInput: aBuilder.
			self buildDescriptionInput: aBuilder.
			self buildBeginYearInput: aBuilder.
			self buildBeginMonthInput: aBuilder.
			self buildBeginDayInput: aBuilder.
			self buildBeginHourInput: aBuilder.
			self buildBeginMinuteInput: aBuilder.
			self buildEndYearInput: aBuilder.
			self buildEndMonthInput: aBuilder.
			self buildEndDayInput: aBuilder.
			self buildEndHourInput: aBuilder.
			self buildEndMinuteInput: aBuilder.
			self buildLocationInput: aBuilder.
			self buildParticipantsInput: aBuilder.
			self buildSaveButton: aBuilder})