accessing
testConstructor

	"Error: Morph doesnt understand topView"
	self colorPicker: (SCMNewColorPickerMorph on: Morph new originalColor: Color black setColorSelector: #color: label: 'foo').
	self assert: (self colorPicker isKindOf: SCMNewColorPickerMorph)
