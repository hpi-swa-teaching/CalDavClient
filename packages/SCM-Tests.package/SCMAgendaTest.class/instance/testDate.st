testing
testDate

	| days |
	days := self subject submorphs.
	days do: [:day |
		day submorphs first submorphs do: [:eventMorph |
			self assert: eventMorph event begin asDate equals: day date.]]