Class {
	#name : #ArangoDocumentHandle,
	#superclass : #Object,
	#instVars : [
		'collection',
		'key',
		'document',
		'revision'
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
	^ collection 
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
	^ $/ join: { collection . key }
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
ArangoDocumentHandle >> revision [
	^ revision
]

{ #category : #'as yet unclassified' }
ArangoDocumentHandle >> revision: aString [ 
	revision := aString
]
