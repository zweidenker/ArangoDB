Class {
	#name : #ArangoDocumentHandle,
	#superclass : #Object,
	#instVars : [
		'collection',
		'key',
		'repository',
		'document'
	],
	#category : #'Arango-Core-Model'
}

{ #category : #accessing }
ArangoDocumentHandle >> collection [
	^ collection
]

{ #category : #accessing }
ArangoDocumentHandle >> collection: anObject [
	collection := anObject
]

{ #category : #'as yet unclassified' }
ArangoDocumentHandle >> collectionName [
	^ repository collectionNameFor: document class
]

{ #category : #accessing }
ArangoDocumentHandle >> document [
	^ document
]

{ #category : #accessing }
ArangoDocumentHandle >> document: anObject [
	document := anObject
]

{ #category : #'as yet unclassified' }
ArangoDocumentHandle >> handleString [
	^ repository documentHandle: document
]

{ #category : #accessing }
ArangoDocumentHandle >> key [
	^ key
]

{ #category : #accessing }
ArangoDocumentHandle >> key: anObject [
	key := anObject
]

{ #category : #accessing }
ArangoDocumentHandle >> repository [
	^ repository
]

{ #category : #accessing }
ArangoDocumentHandle >> repository: anObject [
	repository := anObject
]
