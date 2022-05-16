as yet unclassified
createForm
	"Form Layout"

		|mainBox button|
	
	mainBox := self createMainBox.
	
	self createFormComponentIn: mainBox With: 'EventTitle'.
	self createFormComponentIn: mainBox With: 'Event Date'.
	self createFormComponentIn: mainBox With: 'Event Starttime'.

	button := self createButtonWithLabel: 'Done' andTarget: mainBox.
	mainBox addMorphBack: button.