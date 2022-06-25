initialization
extractString

	"todo: rename as this string format makes sense for agenda but might not be suitable for week view"
	|string|
	string := self mainInfo.
	((self event location ~= '') and: [self event location ~= nil]) ifTrue: [string := string , ', ' , self event location].
	^ string