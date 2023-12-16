"
For the Class part:   ""I represent a set of iching tiles"".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.
I read the file of data from the disk and keep track of the information. I provide a random iching entry. 



- primeData   Read the data from the file system. 
- atRandom 	  Choose an entry at random 
	
server :- IchingServer new. 

aCast := server atRandom. 


"
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
