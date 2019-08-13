Class {
	#name : #ITExampleReadOnlyForm,
	#superclass : #SpPresenter,
	#instVars : [
		'form'
	],
	#category : #'Icetray-Examples'
}

{ #category : #specs }
ITExampleReadOnlyForm class >> defaultSpec [
	<spec: #default>
	
	^ SpLayout composed 
			newColumn: #form
]

{ #category : #examples }
ITExampleReadOnlyForm class >> openExample [
	<example>
	self new openWithSpec
]

{ #category : #accessing }
ITExampleReadOnlyForm >> form [
	^ form
]

{ #category : #initialization }
ITExampleReadOnlyForm >> initializeWidgets [
	form := ITForm new.
	form
		addTextField: #field1 label: 'Without validation';
		addTextField: #field2 label: 'With ghost' ghost: 'a ghost text buuu';
		addTextField: #field3 label: 'Required';
		beReadOnly.
		
	form valueNamed: #field1 set: 'Value1'.	
	form valueNamed: #field2 set: 'Value2'.	
	form valueNamed: #field3 set: 'Value3'.				
]

{ #category : #api }
ITExampleReadOnlyForm >> title [

	^ 'Form Example'
]
