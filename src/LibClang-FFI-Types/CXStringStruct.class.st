Class {
	#name : #CXStringStruct,
	#superclass : #CXExternalStructure,
	#classVars : [
		'OFFSET_DATA',
		'OFFSET_PRIVATE_FLAGS'
	],
	#category : 'LibClang-FFI-Types'
}

{ #category : #accessing }
CXStringStruct class >> fieldsDesc [
	^#(
	void *data;
	uint32 private_flags;
	)
]

{ #category : #'accessing structure variables' }
CXStringStruct >> data [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_DATA) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
CXStringStruct >> data: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_DATA put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
CXStringStruct >> private_flags [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_PRIVATE_FLAGS
]

{ #category : #'accessing structure variables' }
CXStringStruct >> private_flags: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_PRIVATE_FLAGS put: anObject
]
