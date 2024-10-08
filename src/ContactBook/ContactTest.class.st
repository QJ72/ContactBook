Class {
	#name : #ContactTest,
	#superclass : #TestCase,
	#category : #'ContactBook-Tests'
}

{ #category : #tests }
ContactTest >> testCreation [
	| contact |
	contact := Contact
		newNamed: 'Marcus Denker'
		email: 'marcus.denker@inria.fr'.
	self assert: contact fullname equals: 'Marcus Denker'.
	self assert: contact email equals: 'marcus.denker@inria.fr'
]
