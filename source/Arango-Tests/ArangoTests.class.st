Class {
	#name : #ArangoTests,
	#superclass : #TestCase,
	#instVars : [
		'arango'
	],
	#category : #'Arango-Tests'
}

{ #category : #'as yet unclassified' }
ArangoTests >> createTestDatabase [
	arango createDatabaseNamed: 'pharo-tests'
]

{ #category : #running }
ArangoTests >> setUp [
	arango := ArangoDBClient new 
		baseUri: self baseUri.

]
