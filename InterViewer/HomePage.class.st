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

	html div 
		class: 'navBar';
		with: [
			html image
				url: 'https://images.emojiterra.com/google/noto-emoji/v2.034/512px/1f50d.png';
				width: '40px';
				style: 'margin-left: 15px'.
			html div
				class: 'logo';
				with: [ 
					html 
						anchor
						callback: [];
						with: [html header: 'iNTERvIEWER'].
				].
			html form
				class: 'nav-links';
				with: [ 
					html label
						with: 'Keywords:'.
					html textInput 
						id: 'keywords';
						name: 'keywords'.
					html label
						with: 'Locations:'.
					html textInput 
						id: 'locations';
						name: 'locations'.
					html submitButton 
						value: 'Search'.
				].
			html div
				id: 'wholesite';
				with: [ 
					html header
						style: 'text-align: center;';
						with: 'Featured Jobs:'.
					html div
						class: 'featured-jobs';
						with: [  ] 
					] .
			].
]
