toolbuilding
close

	self windows do: [:window | window abandon].
	self topView ifNotNil: #delete.