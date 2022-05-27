as yet unclassified
createForm
	"Form Layout"

		|mainBox button|
	
	mainBox := self createMainBox.
	
	self createFormComponentIn: mainBox With: 'Event Title'.
	self createFormComponentIn: mainBox With: 'Event Date'.
	self createFormComponentIn: mainBox With: 'Event Starttime'.

	button := self createButtonWithLabel: 'Done' andTarget: mainBox owner.
	mainBox addMorphBack: button.