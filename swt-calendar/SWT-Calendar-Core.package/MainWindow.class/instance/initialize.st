as yet unclassified
initialize
	
	|googleConnectButton|
	super initialize.
	
	
	googleConnectButton := SimpleButtonMorph new.
		"googleConnectButton extent: 50@50."
		googleConnectButton position:  (250@250).
		googleConnectButton label: 'Connect to Google'.
		"Pneis target: [self openInHand.].
		Pneis actionSelector: #value."
		
		self addMorph: googleConnectButton.