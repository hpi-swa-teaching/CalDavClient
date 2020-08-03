as yet unclassified
url: anUrl username: aUsername password: aPassword 

	| client |
	
	client := self new username: aUsername; password: aPassword.
		
	CalDavClient registerClient: client for: anUrl.
	self establishedConnection: true.
		
	^ client