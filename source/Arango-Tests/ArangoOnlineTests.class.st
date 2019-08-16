Class {
	#name : #ArangoOnlineTests,
	#superclass : #ArangoTests,
	#category : #'Arango-Tests'
}

{ #category : #accessing }
ArangoOnlineTests >> baseUri [ 
	^ 'http://localhost:8529/'
]

{ #category : #tests }
ArangoOnlineTests >> collectionNameForTest [
	^ 'test-collection'
]

{ #category : #tests }
ArangoOnlineTests >> createExampleDocument [
	arango 
		createDocument: { #foo -> #bar } asDictionary 
		collection: self collectionNameForTest .
]

{ #category : #'as yet unclassified' }
ArangoOnlineTests >> createTestCollection [
	arango createCollection: self collectionNameForTest 
]

{ #category : #'as yet unclassified' }
ArangoOnlineTests >> removeTestCollection [
	arango removeCollection: self collectionNameForTest 
]

{ #category : #running }
ArangoOnlineTests >> setUp [
	super setUp.
	"self createTestDatabase."
	self createTestCollection
]

{ #category : #running }
ArangoOnlineTests >> tearDown [
	super tearDown.
	self removeTestCollection 
]

{ #category : #tests }
ArangoOnlineTests >> testCallCreateDocument [
	self createExampleDocument 
]

{ #category : #tests }
ArangoOnlineTests >> testSearchExampleDocument [
	| result |
	self createExampleDocument.
	result := arango 
		readOne: self collectionNameForTest
		where: { #foo -> #bar } asDictionary.
		
	self assert: (result at: #foo) equals: #bar
]
