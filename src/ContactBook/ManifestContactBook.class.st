"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestContactBook,
	#superclass : #PackageManifest,
	#category : #'ContactBook-Manifest'
}

{ #category : #'code-critics' }
ManifestContactBook class >> ruleReTestClassNotInPackageWithTestEndingNameV1FalsePositive [
	^ #(#(#(#RGPackageDefinition #(#ContactBook)) #'2024-09-18T16:52:30.737788+02:00') )
]
