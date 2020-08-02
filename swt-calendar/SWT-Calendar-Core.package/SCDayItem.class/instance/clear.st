as yet unclassified
clear

	self submorphs size > 1
		ifTrue:[ 
			2 to: self submorphs size do: [:each |
			self submorphs last abandon].
		].