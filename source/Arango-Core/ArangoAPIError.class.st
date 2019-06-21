Class {
	#name : #ArangoAPIError,
	#superclass : #ArangoError,
	#category : #'Arango-Core'
}

{ #category : #'as yet unclassified' }
ArangoAPIError class >> fromResponse: aResponse [ 
	| contents |
	contents := NeoJSONReader fromString: aResponse contents.
	^ (self withErrorNumber: (contents at: 'errorNum'))
		initializeFromResponse: contents;
		signal
]

{ #category : #'as yet unclassified' }
ArangoAPIError class >> withErrorNumber: anInteger [
	^ (self allSubclasses 
		detect: [ :each | each errorNumber = anInteger ]
		ifNone: [ ArangoAPIErrorNotFound signal: 'no error found for number ', anInteger asString ])
			new
]

{ #category : #initialization }
ArangoAPIError >> initializeFromResponse: aDictionary [ 
	messageText := aDictionary at: 'errorMessage'
]
