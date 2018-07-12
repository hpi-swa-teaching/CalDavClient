as yet unclassified
newWithUrl: aUrl Username: aUsername Password: aPassword

	^ self new
		caldavLink: aUrl;
		username: aUsername;
		password: aPassword;
		refresh;
		yourself