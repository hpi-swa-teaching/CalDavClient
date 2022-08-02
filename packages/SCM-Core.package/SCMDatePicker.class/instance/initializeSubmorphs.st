initialization
initializeSubmorphs

	| weekRow dateButton |
	
	self buildRows.
	self date month weeks do: [:week | weekRow := self newRow.
		week dates
			do: [:aDate | dateButton := self createDateButtonFor: aDate. 
				self date = aDate
					ifTrue: [self hightlightDateButton: dateButton].
				self date month ~= aDate month
					ifTrue: [self grayOut: dateButton].
				weekRow addMorphBack: dateButton]
			separatedBy: [weekRow addMorphBack: AlignmentMorph newVariableTransparentSpacer].
		self addMorphBack: weekRow]