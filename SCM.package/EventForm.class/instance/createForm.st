as yet unclassified
createForm
	"Form Layout"

		|main box1 box2 box3 box1TextCell box1TextField box1Text box2TextCell box2TextField box2Text box3TextCell box3TextField box3Text button buttonThing|
	
	main := self createMainBox.

	box1 := self createBox.

	main addMorphBack: box1.

	box1TextCell :=  self createTextCell.

	box1Text := StringMorph new
		contents: 'Event Title';
		color: Color black.
	
	box1TextCell addMorph: box1Text.
	
	box1 addMorphBack: box1TextCell.

	box1TextField :=  self createTextField.
	box1 addMorphBack: box1TextField.

	box2 := self createBox.

	main addMorphBack: box2.

	box2TextCell :=  self createTextCell.
	box2Text := StringMorph new
		contents: 'Event Date';
		color: Color black.
	box2TextCell addMorph: box2Text.
	
	box2 addMorphBack: box2TextCell.

	box2TextField :=  self createTextField.
	
	box2 addMorphBack: box2TextField.

	box3 := self createBox.

	main addMorphBack: box3.

	box3TextCell :=  self createTextCell.
	box3Text := StringMorph new
		contents: 'Event Starttime';
		color: Color black.
	box3TextCell addMorph: box3Text.
	
	box3 addMorphBack: box3TextCell.

	box3TextField :=  self createTextField.
	box3 addMorphBack: box3TextField.

	button := Morph new
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		listCentering: #center;
		wrapCentering: #center;
		hResizing: #spaceFill;
		color: Color green.
	buttonThing := SimpleButtonMorph new
		label: 'Done!';
		target: main;
		actionSelector: #abandon.
	
	button addMorph: buttonThing.
	main addMorphBack: button.