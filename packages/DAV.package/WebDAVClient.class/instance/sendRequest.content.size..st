as yet unclassified
sendRequest: aRequest content: content size: contentSize

	^ [super sendRequest: aRequest content: content size: contentSize] on: WebAuthRequired do: [:ex |
		ex username: '' password: '' ]