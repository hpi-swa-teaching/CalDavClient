toolbuilder
buildCalendarTitle: aBuilder

	^ aBuilder pluggableInputFieldSpec new
			model: self;
			color: #titleColor;
			textColor: #titleTextColor; 
			getText: #calendarTitle;
			editText: #calendarTitle:;
			help: 'Calendar Name';
			frame: (self borderLeft @ (self lineOffsetOf: 0) corner: self borderRight @ self lineHeight)