Class {
	#name : #IVJob,
	#superclass : #Object,
	#instVars : [
		'id',
		'jobtitle',
		'companyname',
		'location',
		'description',
		'logo',
		'link'
	],
	#category : #InterViewer
}

{ #category : #'as yet unclassified' }
IVJob class >> findAll [ 

	^(IVDatabaseManager singleton findAll: self) recordsAsDictionaries
		collect: [ :eachDictionary| self fromDictionary: eachDictionary  ]
]

{ #category : #'as yet unclassified' }
IVJob class >> findAllWhere: aDictionary [

	| results |
	results := (IVDatabaseManager singleton findAll: self where: aDictionary).
	results ifNil: [ ^OrderedCollection new ].
	
	^results recordsAsDictionaries
		collect: [ :eachDictionary| self fromDictionary: eachDictionary  ]
]

{ #category : #'as yet unclassified' }
IVJob class >> fromDictionary: dictionary [

	| instance |
	instance := self new.
	dictionary keysAndValuesDo: [ :key :value | 
		instance perform: key , ':' with: value ].
	^ instance
]

{ #category : #sql }
IVJob class >> readQuery [

	^ 'SELECT ' , self sqlFields , ' FROM ', self tableName
]

{ #category : #sql }
IVJob class >> readQueryWhere: aDictionary [

	| query |
	query := 'SELECT ' , self sqlFields , ' FROM ', self tableName.
	^aDictionary isEmptyOrNil 
		ifTrue:[query]
		ifFalse:[ 
			query, ' WHERE ', aDictionary asWhereCondition ]
]

{ #category : #sql }
IVJob class >> sqlFields [

	| string |
	self allInstVarNames doWithIndex: [ :each :index | 
		index = 1
			ifTrue: [ string := '' ]
			ifFalse: [ string := string , ',' ].
		string := string , each ].
	^ string
]

{ #category : #'as yet unclassified' }
IVJob class >> tableName [

	^IVDatabaseManager jobsTableName
]

{ #category : #accessing }
IVJob >> companyname [

	^ companyname
]

{ #category : #accessing }
IVJob >> companyname: anObject [

	companyname := anObject
]

{ #category : #accessing }
IVJob >> description [

	^ description
]

{ #category : #accessing }
IVJob >> description: anObject [

	description := anObject
]

{ #category : #accessing }
IVJob >> id [

	^ id
]

{ #category : #accessing }
IVJob >> id: anObject [

	id := anObject
]

{ #category : #sql }
IVJob >> insertQuery [

	^ 'INSERT INTO ' , self class tableName , '(' , self sqlFields , ')'
	  , ' VALUES ' , self sqlFieldValues
]

{ #category : #accessing }
IVJob >> jobtitle [

	^ jobtitle
]

{ #category : #accessing }
IVJob >> jobtitle: anObject [

	jobtitle := anObject
]

{ #category : #accessing }
IVJob >> link [

	^ link
]

{ #category : #accessing }
IVJob >> link: anObject [

	link := anObject
]

{ #category : #accessing }
IVJob >> location [

	^ location
]

{ #category : #accessing }
IVJob >> location: anObject [

	location := anObject
]

{ #category : #accessing }
IVJob >> logo [

	^ logo
]

{ #category : #accessing }
IVJob >> logo: anObject [

	logo := anObject
]

{ #category : #sql }
IVJob >> readQuery [

	^ self class readQuery
]

{ #category : #sql }
IVJob >> sqlFieldValues [

	"
'INSERT INTO table1 (id, name, enabled) VALUES (1, ''foo'', true)'."

	| string |
	string := '('.
	self class allInstVarNames doWithIndex: [ :each :index | 
		| value |
		index = 1 ifFalse: [ string := string , ',' ].
		value := (self perform: each) printString.
		string := string , value ].
	string := string , ')'.
	^ string
]

{ #category : #sql }
IVJob >> sqlFields [

	^self class sqlFields 
]
