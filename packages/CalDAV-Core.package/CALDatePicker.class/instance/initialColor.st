CalendarMorph
initialColor

	"Answer the color to use for a new Calendar."

	^  Color r: 0.516 g: 0.677 b: 1.0

"Note: Richo's initial implementation was to use a randomly-chosen color for each new Calendar, for which the code in this method would be:

	^ Color random

... but in this version, a standard, sedate color is used for each new calendar.   The user can of course change the color using the standard halo recolor tool"