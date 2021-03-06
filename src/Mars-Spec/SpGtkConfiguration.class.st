"
I'm a base configuration for GTK applications. 
I have some convenience methods useful to configure GTK applications
"
Class {
	#name : #SpGtkConfiguration,
	#superclass : #SpApplicationConfiguration,
	#category : #'Mars-Spec-Base'
}

{ #category : #private }
SpGtkConfiguration >> addCSSProviderFromPath: aString [

	(GtkCssProvider newFromPath: aString) addForApplicationToDefaultScreen
]

{ #category : #private }
SpGtkConfiguration >> addCSSProviderFromReference: aReference [

	(GtkCssProvider newFromReference: aReference) addForApplicationToDefaultScreen
]

{ #category : #private }
SpGtkConfiguration >> addCSSProviderFromString: aString [

	(GtkCssProvider newFromString: aString) addForApplicationToDefaultScreen
]

{ #category : #private }
SpGtkConfiguration >> installTheme: aString [

	self settings themeName: aString
]

{ #category : #'private accessing' }
SpGtkConfiguration >> settings [ 

	^ GtkSettings default
]
