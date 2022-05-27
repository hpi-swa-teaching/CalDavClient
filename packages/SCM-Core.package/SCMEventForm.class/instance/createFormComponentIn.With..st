as yet unclassified
createFormComponentIn: aBox With: aTitle

	| box boxTextCell boxText boxTextField|
	
	box := self createBox.
	aBox addMorphBack: box.
	boxTextCell :=  self createTextCell.
	
	boxText := StringMorph new
		contents: aTitle;
		color: Color black.
		
	boxTextCell addMorph: boxText.
	box addMorphBack: boxTextCell.
	boxTextField :=  self createTextField.
	box addMorphBack: boxTextField.