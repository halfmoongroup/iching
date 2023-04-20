Class {
	#name : #IChing,
	#superclass : #Object,
	#instVars : [
		'hexagram',
		'sum',
		'id',
		'image',
		'judgement',
		'name'
	],
	#category : #IChing
}

{ #category : #'as yet unclassified' }
IChing class >> neoJsonMapping: mapper [

	mapper for: self do: [ :mapping |
		mapping mapInstVar: #hexagram to: 'hexagram'.
		mapping mapInstVar: #sum to: 'sum'.
		mapping mapInstVar: #hexagram to: 'id'.
		mapping mapInstVar: #hexagram to: 'image'.
		mapping mapInstVar: #hexagram to: 'judgement'.
		mapping mapInstVar: #name to: 'name'.
				
		]

]

{ #category : #accessing }
IChing >> hexagram [

	^ hexagram
]

{ #category : #accessing }
IChing >> hexagram: anObject [

	hexagram := anObject
]

{ #category : #accessing }
IChing >> id [

	^ id
]

{ #category : #accessing }
IChing >> id: anObject [

	id := anObject
]

{ #category : #accessing }
IChing >> image [

	^ image
]

{ #category : #accessing }
IChing >> image: anObject [

	image := anObject
]

{ #category : #accessing }
IChing >> judgement [

	^ judgement
]

{ #category : #accessing }
IChing >> judgement: anObject [

	judgement := anObject
]

{ #category : #accessing }
IChing >> name [

	^ name
]

{ #category : #accessing }
IChing >> name: anObject [

	name := anObject
]
