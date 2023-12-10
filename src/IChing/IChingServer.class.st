Class {
	#name : #IChingServer,
	#superclass : #Object,
	#instVars : [
		'tiles'
	],
	#category : #IChing
}

{ #category : #accessing }
IChingServer >> atRandom [ 

	| guess | 
	guess := (1 to: tiles size) atRandom.
	^ tiles at: guess. 
]

{ #category : #'as yet unclassified' }
IChingServer >> primeData [ 
	| stream utf8Encoded chars | 
	stream := (File named: '//Users/tgia/Development/Smalltalk/chingData/iching.json') readStream.
	utf8Encoded := ZnCharacterReadStream on: stream encoding: 'utf8'.
	chars := utf8Encoded contents.
	tiles  := (NeoJSONReader on:  chars readStream)  mapInstVarsFor: IChing; nextListAs: IChing. 
	^tiles
]
