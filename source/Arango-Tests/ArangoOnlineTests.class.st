Class {
	#name : #ArangoOnlineTests,
	#superclass : #ArangoTests,
	#category : #'Arango-Tests'
}

{ #category : #accessing }
ArangoOnlineTests >> baseUri [ 
	^ 'http://localhost:8529/'
]

{ #category : #'as yet unclassified' }
ArangoOnlineTests >> createTestCollection [
	arango createCollection: 'test-collection'
]

{ #category : #'as yet unclassified' }
ArangoOnlineTests >> removeTestCollection [
	arango removeCollection: 'test-collection'
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
	arango createDocument: { #foo -> #bar } asDictionary collection: 'test-collection'.
]
