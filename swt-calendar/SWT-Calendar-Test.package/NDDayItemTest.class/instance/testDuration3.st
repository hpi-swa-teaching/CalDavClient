as yet unclassified
testDuration3

|dayItem label|

dayItem:= NDDayItem new.
dayItem events: eventCollection3.

label:= ((dayItem submorphs at: 2) submorphs at: 1) text.

self assert: 'Title: testEvent
Start: 6:00 am
Duration: 1d 30m ' equals: label.