as yet unclassified
newBottomRow
	^ Morph new
		 color: Color transparent ;
		 changeTableLayout ;
		 listDirection: #leftToRight ;
		 hResizing: #spaceFill; vResizing: #shrinkWrap ;
		 height: 20;
		 addMorph: (StringMorph contents: 'Current selection:' translated) ;
		 addMorphBack: self newColorPresenterMorph