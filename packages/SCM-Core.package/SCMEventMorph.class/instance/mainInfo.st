initialization
mainInfo 

	^ (self printTime: self event begin) asText , ' - ' asText,  (self printTime: self event end) asText, ', ' asText, (self event title asText addAttribute: TextEmphasis bold)