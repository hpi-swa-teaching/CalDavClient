as yet unclassified
createDaysCollection: aNumber

1 to: aNumber do: [:x | self add: (NDDayButton new; text: (Date today + x days - 1 days) asString)].