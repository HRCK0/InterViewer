"
uOttawa Project
"
Class {
	#name : #HomePage,
	#superclass : #WAComponent,
	#category : #InterViewer
}

{ #category : #initialization }
HomePage class >> handlerName [
	^ 'InterViewer'
]

{ #category : #initialization }
HomePage class >> initialize [
	WAAdmin register: self asApplicationAt: self handlerName
]

{ #category : #initialization }
HomePage >> initialize [ 
	super initialize.
	
]

{ #category : #initialization }
HomePage >> renderContentOn: html [
	html header: 'Hello World!'
]
