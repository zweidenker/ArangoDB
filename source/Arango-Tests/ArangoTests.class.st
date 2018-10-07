Class {
	#name : #ArangoTests,
	#superclass : #TestCase,
	#category : #'Arango-Tests'
}

{ #category : #tests }
ArangoTests >> testCallCreateDocument [
	| arango |
	arango := ArangoDBClient new baseUri: 'http://test.com'.
	arango httpClient stub.
	arango createDocument: { #foo -> #bar } asDictionary collection: 'test-collection'.
	arango httpClient should receive url: 'http://test.com/_api/document/test-collection?collection=test-collection' asZnUrl.
	arango httpClient should receive entity: (ZnEntity with: '{"foo":"bar"}' type: ZnMimeType applicationJson setCharSetUTF8).
	arango httpClient should receive execute 
]
