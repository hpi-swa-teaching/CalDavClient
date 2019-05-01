as yet unclassified
davPut: anUrl data: payload do: aBlock

	^ self sendDavRequest: anUrl method: 'PUT' query: payload do: aBlock