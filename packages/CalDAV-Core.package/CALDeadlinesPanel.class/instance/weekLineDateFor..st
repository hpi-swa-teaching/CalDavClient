as yet unclassified
weekLineDateFor: aNumber

	^ Date new start: ((self day addDays: ((aNumber - 1)*7)) start offset: DateAndTime localOffset)
