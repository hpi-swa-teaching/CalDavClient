accessing
updateOrNotDependingOnChangeInEtag: newEtag

	self etag ~= newEtag 
		ifTrue: [ | updateInformation |
				updateInformation := self client fetchEventDataFrom: self url.
				self serverData: updateInformation events first.
				self serverCalendar: updateInformation.
				self etag: newEtag]