as yet unclassified
initialize

super initialize.
self text: 'Connect to Google Account'.
self color: Color blue.
self when: #clicked send: #openDialog to: self. 