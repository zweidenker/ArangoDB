Class {
	#name : #ArangoDuplicateNamed,
	#superclass : #ArangoAPIError,
	#category : #'Arango-Core-Exceptions'
}

{ #category : #'as yet unclassified' }
ArangoDuplicateNamed class >> errorNumber [
	^ 1207
]

{ #category : #initialization }
ArangoDuplicateNamed >> initializeFromResponse: aDictionary [ 
	messageText := aDictionary at: 'errorMessage'
]
