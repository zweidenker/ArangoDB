Class {
	#name : #ArangoCollectionNotFoundError,
	#superclass : #ArangoAPIError,
	#category : #'Arango-Core'
}

{ #category : #'as yet unclassified' }
ArangoCollectionNotFoundError class >> errorNumber [
	^ 1203
]
