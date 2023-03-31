Class {
	#name : #IVDatabaseManager,
	#superclass : #Object,
	#instVars : [
		'dbClient',
		'dbUrl'
	],
	#classVars : [
		'singleton'
	],
	#category : #InterViewer
}

{ #category : #accessing }
IVDatabaseManager class >> clearAllManagers [

	self allInstances do: [:each| each close  ]

]

{ #category : #accessing }
IVDatabaseManager class >> clearSingleton [

	^singleton ifNotNil: [ singleton close. singleton := nil  ]

]

{ #category : #generatedatabase }
IVDatabaseManager class >> createDatabase [

	| manager |
	manager := self new
		           dbUrl: (self dbUrlForDB: self postgresDBName);
		           yourself.
	manager executeQuery: 'CREATE DATABASE ' , self databaseName
]

{ #category : #generatedatabase }
IVDatabaseManager class >> createJobsRecords [

	IVJobsMock new demoJobs do: [ :each | 
		self singleton
			executeQuery: each insertQuery
			onError: [ :error |  ] ]
]

{ #category : #generatedatabase }
IVDatabaseManager class >> createJobsTable [
"self createJobsTable"
	| manager |
	manager := self singleton.
	^manager executeQuery: 'CREATE TABLE ', self jobsTableName , 
	' (id INTEGER, jobtitle TEXT, companyname TEXT, location TEXT, description TEXT, logo TEXT, link TEXT)'
	onError: [ :ex | false ]
]

{ #category : #accessing }
IVDatabaseManager class >> databaseName [

	^'interviewer'
]

{ #category : #accessing }
IVDatabaseManager class >> dbUrlDefault [

	^self dbUrlForDB: self databaseName  
]

{ #category : #accessing }
IVDatabaseManager class >> dbUrlForDB: aName [

	^'psql://postgres:1234@localhost:5432/', aName 
]

{ #category : #accessing }
IVDatabaseManager class >> dbUrlPostgresDB [

	^self dbUrlForDB: self postgresDBName  
]

{ #category : #actions }
IVDatabaseManager class >> defaultDatabaseManager [ 

	^self new
		dbUrl: self dbUrlDefault;
		yourself
]

{ #category : #actions }
IVDatabaseManager class >> dropDatabase [

	| manager |
	manager := self new
		           dbUrl: (self dbUrlForDB: self postgresDBName);
		           yourself.
	[ manager executeQuery: 'DROP DATABASE ' , self databaseName ] 
		ensure: [ manager close ]
]

{ #category : #generatedatabase }
IVDatabaseManager class >> generateDatabase [

	self createDatabase.
	self createJobsTable.
	self createJobsRecords
]

{ #category : #accessing }
IVDatabaseManager class >> jobsTableName [

	^'jobs'
]

{ #category : #accessing }
IVDatabaseManager class >> postgresDBName [

	^'postgres' 
]

{ #category : #accessing }
IVDatabaseManager class >> singleton [

	^singleton ifNil: [ singleton := self defaultDatabaseManager  ]

]

{ #category : #'as yet unclassified' }
IVDatabaseManager >> close [

	dbClient ifNotNil: [ dbClient close. dbClient := nil ]
]

{ #category : #'as yet unclassified' }
IVDatabaseManager >> dbClient [

	^ dbClient ifNil: [ dbClient := self dbClientForURL: self dbUrl ]
]

{ #category : #'as yet unclassified' }
IVDatabaseManager >> dbClientForURL: anUrl [

	^P3Client new
		url: anUrl;
		connect;
		yourself
]

{ #category : #'as yet unclassified' }
IVDatabaseManager >> dbUrl [

	^dbUrl ifNil: [ dbUrl := self dbUrlDefault]
]

{ #category : #'as yet unclassified' }
IVDatabaseManager >> dbUrl: urlString [

	dbUrl := urlString
]

{ #category : #'as yet unclassified' }
IVDatabaseManager >> dbUrlDefault [

	^'psql://postgres:1234@localhost:5432/InterViewerDB' 
]

{ #category : #'as yet unclassified' }
IVDatabaseManager >> executeQuery: dbQuery [

	^self executeQuery: dbQuery onError: [ :ex | false ]
]

{ #category : #'as yet unclassified' }
IVDatabaseManager >> executeQuery: dbQuery onError: aBlock [

	^[ self dbClient isConnected ifFalse: [ self dbClient connect].
		self dbClient execute: dbQuery]
	on: Error do: aBlock
]

{ #category : #'as yet unclassified' }
IVDatabaseManager >> findAll: aModelClass [

	^self readQuery: aModelClass readQuery

]

{ #category : #'as yet unclassified' }
IVDatabaseManager >> findAll: aModelClass where: aDictionary [

	^self readQuery: (aModelClass readQueryWhere: aDictionary)

]

{ #category : #'as yet unclassified' }
IVDatabaseManager >> readQuery: dbQuery [

	^self readQuery: dbQuery onError: [ :ex | false ]
]

{ #category : #'as yet unclassified' }
IVDatabaseManager >> readQuery: dbQuery onError: aBlock [

	^[ self dbClient isConnected ifFalse: [ self dbClient connect].
		self dbClient query: dbQuery]
	on: Error do: aBlock
]
