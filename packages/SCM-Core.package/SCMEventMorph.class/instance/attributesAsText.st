extracting
attributesAsText

	| attributeText |

	attributeText := self timeAndTitleAsText.
	self event location isEmpty
		ifFalse: [attributeText append: ', ' asText, self event location asText].
	
	^ attributeText