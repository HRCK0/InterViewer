Class {
	#name : #BaselineOfInterViewer,
	#superclass : #BaselineOf,
	#category : #BaselineOfInterViewer
}

{ #category : #baselines }
BaselineOfInterViewer >> baseline: spec [
	<baseline>
	
	spec for: #common do: [ 
		self setUpDependences:spec.
		self setUpPackages: spec.
].

]

{ #category : #baselines }
BaselineOfInterViewer >> setUpDependences: spec [

	spec
		baseline: 'Seaside3'
		with: [ spec repository: 'github://SeasideSt/Seaside:v3.4.7/repository' ];
		baseline: 'Mapless'
		with: [ spec 
						repository: 'github://sebastianconcept/Mapless:v0.5.19/src';
						loads: #('Core' 'Mongo' 'Memory' 'Mapless-Mongo-Log') ]
]

{ #category : #baselines }
BaselineOfInterViewer >> setUpPackages: spec [

	spec
		package: 'InterViewer'
		with: [ spec requires: #( 'Seaside' 'Mapless' ) ]
]
