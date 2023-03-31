Extension { #name : #Dictionary }

{ #category : #'*InterViewer' }
Dictionary >> asWhereCondition [

	| result |
	result := ''.
	self isEmpty ifTrue: [ ^ '' ].
	self associations doWithIndex: [ :assoc :index | 
		index = 1 ifFalse: [ result := result , ' or ' ].
		result := result , assoc key , ' ILIKE ' , ('%', assoc value, '%') printString ].
	^ result
]
