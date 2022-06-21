as yet unclassified
testUI

	self assert: self subject submorphs size equals: 16.
	self assert: (self subject submorphs last) submorphs first class equals: SimpleButtonMorph.
	self assert: (self subject submorphs at: 15) class equals: DropDownChoiceMorph.
	