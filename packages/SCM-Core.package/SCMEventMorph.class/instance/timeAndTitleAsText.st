extracting
timeAndTitleAsText 

	^ (self class hourAndMinuteAsText: self event begin), ' - ' asText,
		(self class hourAndMinuteAsText: self event end), ', ' asText,
		(self event title asText addAttribute: TextEmphasis bold)