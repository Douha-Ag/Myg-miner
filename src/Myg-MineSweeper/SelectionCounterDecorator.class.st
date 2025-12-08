Class {
	#name : 'SelectionCounterDecorator',
	#superclass : 'MBoardDecorator',
	#instVars : [
		'counter',
		'counterText'
	],
	#category : 'Myg-MineSweeper',
	#package : 'Myg-MineSweeper'
}

{ #category : 'initialization' }
SelectionCounterDecorator >> counter [
    ^ counter
]

{ #category : 'initialization' }
SelectionCounterDecorator >> counterText [
    ^ counterText
]

{ #category : 'initialization' }
SelectionCounterDecorator >> incrementCounter [
    counter := counter + 1.
    self updateCounterText.
]

{ #category : 'initialization' }
SelectionCounterDecorator >> initialize [
    super initialize.
    counter := 0.
    counterText := BlTextElement new.
    self updateCounterText.
]

{ #category : 'accessing' }
SelectionCounterDecorator >> onBoxClicked: aBox [
    " Cette méthode sera appelée à chaque clic "
    self incrementCounter.
]

{ #category : 'initialization' }
SelectionCounterDecorator >> updateCounterText [
    counterText text: ('The number of selections: ', counter asString) asRopedText.
]
