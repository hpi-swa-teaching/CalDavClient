initialization
extractString

	"todo: rename as this string format makes sense for agenda but might not be suitable for week view"
	|string|
	string := self mainInfo.
	string := string , self appendOptionalInfo.
	^ string