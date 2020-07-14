as yet unclassified
testDeleteButtonLabel

|dayItem label|

dayItem:= NDDayItem new.
dayItem events: eventCollection3.

label:= ((dayItem submorphs at: 2) submorphs at: 2) text.

self assert: 'delete' equals: label.