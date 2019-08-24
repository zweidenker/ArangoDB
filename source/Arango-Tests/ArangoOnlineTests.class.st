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
	arango createCollection: 'testcollection'
]

{ #category : #'as yet unclassified' }
ArangoOnlineTests >> removeTestCollection [
	arango removeCollection: 'testcollection'
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
	arango httpClient should receive url: 'http://test.com/_api/document/test-collection?collection=test-collection' asZnUrl.
	arango httpClient should receive entity: (ZnEntity with: '{"foo":"bar"}' type: ZnMimeType applicationJson setCharSetUTF8).
	arango httpClient should receive execute 
]
