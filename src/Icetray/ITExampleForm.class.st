Class {
	#name : #ITExampleForm,
	#superclass : #SpPresenter,
	#instVars : [
		'form'
	],
	#category : #'Icetray-Examples'
}

{ #category : #specs }
ITExampleForm class >> defaultSpec [
	<spec: #default>
	
	^ SpLayout composed 
			newColumn: #form
]

{ #category : #examples }
ITExampleForm class >> openExample [
	<example>
	self new openWithSpec
]

{ #category : #accessing }
ITExampleForm >> form [
	^ form
]

{ #category : #initialization }
ITExampleForm >> initializeWidgets [
	form := ITForm new.
	form
		addTextField: #field1 label: 'Without validation';
		addTextField: #field2 label: 'With ghost' ghost: 'a ghost text buuu';
		addTextField: #field3 label: 'Required' with: [:field | field beRequired ];
		validateOnChange;
		whenChangedDo: [ self inform: (form valueNamed: #field3) ]
		

]

{ #category : #api }
ITExampleForm >> title [

	^ 'Form Example'
]
