Class {
	#name : #BaselineOfArangoDB,
	#superclass : #BaselineOf,
	#category : #BaselineOfArangoDB
}

{ #category : #baselines }
BaselineOfArangoDB >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				package: 'Arango-Core' with: [ spec requires: #('OpenAPI') ];
				package: 'Arango-Tests' with: [ spec requires: #('Arango-Core' 'Mocketry'). ].

			spec 
				baseline: 'OpenAPI' with: [ 
					spec 
						repository: 'github://zweidenker/OpenAPI/source';
						loads: #( 'Client' ) ];
				baseline: 'PersistenceQuery' with: [ 
					spec 
						repository: 'github://pharo-nosql/PersistenceQuery' ];
				baseline: 'Mocketry' with: [ spec repository: 'github://dionisiydk/Mocketry:v4.0.x'. ].

			spec
				group: 'default' with: #('Core');
				group: 'Core' with: #('Arango-Core');
				group: 'Tests' with: #('Arango-Tests'). ]. 
]
