as yet unclassified
sendDavRequest: anUrl method: method query: query do: aBlock

	| request |
	self initializeFromUrl: anUrl asString.
	request := self requestWithUrl: anUrl asString.
	request method: method.
	request headerAt: 'Content-Type' put: 'application/xml'.
	request headerAt: 'Content-Length' put: query size.
	userAgent ifNotNil:[request headerAt: 'User-Agent' put: userAgent].
	aBlock value: request.
	^self sendRequest: request content: query readStream size: query size
