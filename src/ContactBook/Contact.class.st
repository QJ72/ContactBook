Class {
	#name : #Contact,
	#superclass : #Object,
	#instVars : [
		'fullname',
		'email'
	],
	#category : #ContactBook
}

{ #category : #'instance creation' }
Contact class >> newNamed: aNameString email: anEmailString [
	^ self new
	fullname: aNameString;
	email: anEmailString;
	yourself
]

{ #category : #accessing }
Contact >> email [ 
	^ email
]

{ #category : #accessing }
Contact >> email: aMailString [ 
	email := aMailString .
]

{ #category : #accessing }
Contact >> fullname [ 
	^ fullname 
]

{ #category : #accessing }
Contact >> fullname: aNameString [ 
	fullname := aNameString.
]

{ #category : #'as yet unclassified' }
Contact >> gravatarUrl [
^ 'http://www.gravatar.com/avatar/', (MD5 hashMessage: email
trimBoth asLowercase) hex, '.jpg'
]

{ #category : #printing }
Contact >> printOn: aStream [
	aStream
	nextPutAll: self fullname;
	nextPutAll: ' <';
	nextPutAll: self email;
	nextPutAll: '>'
]
