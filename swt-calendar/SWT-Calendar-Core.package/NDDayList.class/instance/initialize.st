initialize-release
initialize


super initialize.

"dayCollection := self createDaysCollection: 10."

self add: (PHListGroup new addAll: (#('20 May 2020' '21 May 2020' '22 May 2020' '23 May 2020' '24 May 2020' '25 May 2020' '26 May 2020' '27 May 2020' '28 May 2020' '29 May 2020') collect: [ :text |
		PHListGroupItem new
			addStyleClass: #clickable;
			add: (PHLabel text: text)])).