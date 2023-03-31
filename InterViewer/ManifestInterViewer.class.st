"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestInterViewer,
	#superclass : #PackageManifest,
	#category : #'InterViewer-Manifest'
}

{ #category : #'code-critics' }
ManifestInterViewer class >> ruleInconsistentMethodClassificationRuleV1FalsePositive [
	^ #(#(#(#RGClassDefinition #(#HomePage)) #'2023-04-01T01:21:38.965507+02:00') )
]

{ #category : #'code-critics' }
ManifestInterViewer class >> ruleLongMethodsRuleV1FalsePositive [
	^ #(#(#(#RGClassDefinition #(#HomePage)) #'2023-03-31T15:52:37.484674+02:00') )
]

{ #category : #'code-critics' }
ManifestInterViewer class >> ruleSentNotImplementedRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#'IVJob class' #readQueryWhere: #true)) #'2023-03-31T23:40:26.719513+02:00') )
]

{ #category : #'code-critics' }
ManifestInterViewer class >> ruleUnclassifiedMethodsRuleV1FalsePositive [
	^ #(#(#(#RGClassDefinition #(#IVJobsMock)) #'2023-03-31T21:58:53.048716+02:00') )
]

{ #category : #'code-critics' }
ManifestInterViewer class >> ruleUtilityMethodsRuleV1FalsePositive [
	^ #(#(#(#RGClassDefinition #(#HomePage)) #'2023-03-31T15:42:59.97226+02:00') )
]
