accessing
endColor

	^ endColor ifNil: [endColor := self defaultColor]