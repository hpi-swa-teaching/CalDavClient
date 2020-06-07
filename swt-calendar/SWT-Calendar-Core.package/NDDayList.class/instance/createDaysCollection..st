as yet unclassified
createDaysCollection: aNumber
|day|
1 to: aNumber do: [:x | day:= Date today + x days - 1 days.
	  self add: (NDDayButton new; text: (NDDayButton abridgeWeekday: day), ', ', (day asString))].