"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestArangoCore,
	#superclass : #PackageManifest,
	#category : #'Arango-Core-Manifest'
}

{ #category : #'code-critics' }
ManifestArangoCore class >> ruleGRUsesCurlyBraceArraysRuleV1FalsePositive [
	^ #(#(#(#RGPackage #(#'Arango-Core')) #'2019-08-15T16:00:07.717318+02:00') )
]
