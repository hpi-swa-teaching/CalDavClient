accessing
beginColor

	^ beginColor ifNil: [beginColor := self defaultColor]