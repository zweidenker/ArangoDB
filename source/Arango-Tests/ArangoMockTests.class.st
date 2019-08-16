Class {
	#name : #ArangoMockTests,
	#superclass : #ArangoTests,
	#instVars : [
		'stub'
	],
	#category : #'Arango-Tests'
}

{ #category : #running }
ArangoMockTests >> baseUri [ 
	^ 'http://test.com'
]

{ #category : #'as yet unclassified' }
ArangoMockTests >> returnString: aString [
	stub execute 
		will: [ arango httpClient 
			instVarNamed: #response 
			put: (ZnResponse ok: (ZnStringEntity text: aString)) ].
]

{ #category : #running }
ArangoMockTests >> setUp [ 
	arango := ArangoDBClient new baseUri: 'http://test.com'.
	stub := arango httpClient stub.
]

{ #category : #tests }
ArangoMockTests >> testCallCreateDocument [
	self returnString: '{ "_key" : "foo1", "_rev" : 2 }'.
	
	arango createDocument: { #foo -> #bar } asDictionary collection: 'test-collection'.
	arango httpClient should receive url: 'http://test.com/_api/document/test-collection?collection=test-collection' asZnUrl.
	arango httpClient should receive entity: (ZnEntity with: '{"foo":"bar"}' type: ZnMimeType applicationJson setCharSetUTF8).
	arango httpClient should receive execute 
]
