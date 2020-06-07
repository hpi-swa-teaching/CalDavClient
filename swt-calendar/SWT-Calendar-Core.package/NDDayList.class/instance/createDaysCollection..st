as yet unclassified
createDaysCollection: aNumber


1 to: aNumber do: [:x | self add: (NDDayButton new; text: (NDDayButton abridgeWeekday: Date today + x days - 1 days), ', ', ((Date today + x days - 1 days) asString))].