initialization
extractString

	"todo: rename"
	^ (self printTime: self event begin) , ' - ',  (self printTime: self event end) , ', ' , self event title , ', ' , self event location