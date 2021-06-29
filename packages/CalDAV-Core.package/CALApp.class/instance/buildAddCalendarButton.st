toolbuilder
buildAddCalendarButton
	
	| icon |
	icon := CALIcon new
		app: self;
		name: 'add';
		size: 20 @ 20;
		functionName: #openAddCalendarDialog.
	icon loadIcon.
	icon openInWorld
	
"buildAddCalendarButton: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openAddCalendarDialog;
		label: 'Add Calendar';
		frame: (0 @ 0.5 corner: 0.1 @ 0.6);
		yourself"