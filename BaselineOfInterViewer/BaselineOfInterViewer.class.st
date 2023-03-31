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
		with: [ 
			spec repository: 'github://SeasideSt/Seaside:v3.4.7/repository' ];
		baseline: 'P3' with: [ spec repository: 'github://svenvc/P3' ]
]

{ #category : #baselines }
BaselineOfInterViewer >> setUpPackages: spec [

	spec
		package: 'InterViewer'
		with: [ spec requires: #( 'Seaside3' 'P3' ) ]
]
