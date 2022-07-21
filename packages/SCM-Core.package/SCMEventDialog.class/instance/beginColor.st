accessing
beginColor

	"maybe rename instance variable to beginFieldsColor"
	^ beginColor ifNil: [beginColor := self defaultColor]