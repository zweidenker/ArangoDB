Class {
	#name : #ArangoDocumentNotFound,
	#superclass : #ArangoAPIError,
	#category : #'Arango-Core-Exceptions'
}

{ #category : #'as yet unclassified' }
ArangoDocumentNotFound class >> errorNumber [
	^ 1202
]
