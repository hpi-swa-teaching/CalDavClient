as yet unclassified
davDelete: anUrl do: aBlock

	^ self sendDavRequest: anUrl method: 'DELETE' query: '' do: aBlock