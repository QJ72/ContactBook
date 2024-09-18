Class {
	#name : #ContactBook,
	#superclass : #Object,
	#instVars : [
		'contacts'
	],
	#category : #ContactBook
}

{ #category : #current }
ContactBook class >> createDefault [
	^ self new
	addContact: (Contact
	newNamed: 'Damien Cassou'
	email: 'damien@cassou.me');
	addContact: (Contact
	newNamed: 'Marcus Denker'
	email: 'marcus.denker@inria.fr');
addContact: (Contact
newNamed: 'Tudor Girba'
email: 'tudor@tudorgirba.com');
addContact: (Contact
newNamed: 'Clara Allende'
email: 'clari.allende@gmail.com');
yourself

]

{ #category : #adding }
ContactBook >> addContact: aContact [
	contacts add: aContact
]

{ #category : #accessing }
ContactBook >> contacts [
	^ contacts
]

{ #category : #initialization }
ContactBook >> initialize [ 
	super initialize.
	contacts ifNil: [ contacts := OrderedCollection new ]
]

{ #category : #removing }
ContactBook >> removeContact: aContact [
	contacts ifNotNil: [ contacts remove: aContact ifAbsent: []].
]
