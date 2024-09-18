Class {
	#name : #ContactBookTest,
	#superclass : #TestCase,
	#instVars : [
		'contactBook'
	],
	#category : #'ContactBook-Tests'
}

{ #category : #running }
ContactBookTest >> setUp [
	super setUp.
	contactBook := ContactBook new.

]

{ #category : #tests }
ContactBookTest >> testAddContact [
	| contact |
	contact := Contact newNamed: 'Roger' email: 'roger.durand@gmail.com'.
	contactBook addContact: contact.
	self assert: contactBook contacts size equals: 1
]

{ #category : #tests }
ContactBookTest >> testRemoveContact [
	| contact |
	contact := Contact newNamed: 'Roger' email: 'roger.durand@gmail.com'.
	contactBook addContact: contact.
	contactBook removeContact: contact.	
	self assert: contactBook contacts size equals: 0
]
