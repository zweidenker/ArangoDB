Class {
	#name : #ArangoGraphNotFoundError,
	#superclass : #ArangoAPIError,
	#category : #'Arango-Core-Exceptions'
}

{ #category : #'as yet unclassified' }
ArangoGraphNotFoundError class >> errorNumber [
	^ 1924
]
