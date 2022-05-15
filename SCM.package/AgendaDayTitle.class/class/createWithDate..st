nil
createWithDate: aDate

	| agendaDayTitle |
	agendaDayTitle := self new
		date: aDate;
		yourself.
	agendaDayTitle addMorph: (TextMorph string: agendaDayTitle date asString size: 20).
	^ agendaDayTitle