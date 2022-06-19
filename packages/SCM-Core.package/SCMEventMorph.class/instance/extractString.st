initialization
extractString

	"todo: rename as this string format makes sense for agenda but might not be suitable for week view"
	^ (self printTime: self event begin) , ' - ',  (self printTime: self event end) , ', ' , self event title , ', ' , self event location