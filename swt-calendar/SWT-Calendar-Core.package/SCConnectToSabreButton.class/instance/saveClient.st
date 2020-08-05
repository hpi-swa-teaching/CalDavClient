saving
saveClient

	SCConnectToSabreButton sabreClient: 
		(SCSabreCalDavClient 
			url:(urlArea textArea text) 
			username:(usernameArea textArea text) 
			password:(passwordArea text)).

	SCConnectToSabreButton sabreClient 
		url: (urlArea textArea text).
		
	dialog accept: self.
	self text: 'Connected to NextCloud'.