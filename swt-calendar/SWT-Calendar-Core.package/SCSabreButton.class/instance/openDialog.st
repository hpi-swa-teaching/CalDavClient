as yet unclassified
openDialog

dialog:=PHDialog new.
dialog content: ((PHLabel new) text:'Set Up Client';pointSize: 25).
urlArea := (PHTextAreaWithLabel new withPadding; text: 'Enter your Calendar Url:').
usernameArea := (PHTextAreaWithLabel new withPadding; text: 'Enter your username:').
passwordArea := (PHTextAreaWithLabel new withPadding; text: 'Enter your password:').
dialog content: urlArea.
dialog content: usernameArea.
dialog content: passwordArea.
dialog content: (PHButton new withPadding; text: 'OK'; when: #clicked send: #saveClient to: self).
dialog openFor: dialog.