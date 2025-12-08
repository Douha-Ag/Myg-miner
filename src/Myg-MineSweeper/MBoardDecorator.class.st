Class {
	#name : 'MBoardDecorator',
	#superclass : 'Object',
	#instVars : [
		'board'
	],
	#category : 'Myg-MineSweeper',
	#package : 'Myg-MineSweeper'
}

{ #category : 'accessing' }
MBoardDecorator >> board [
    ^ board
]

{ #category : 'accessing' }
MBoardDecorator >> board: aBoard [
    board := aBoard.
]

{ #category : 'accessing' }
MBoardDecorator >> grid [
    ^ board grid
]

{ #category : 'accessing' }
MBoardDecorator >> height [
    ^ board height
]

{ #category : 'initialization' }
MBoardDecorator >> initialize [
    super initialize.
]

{ #category : 'accessing' }
MBoardDecorator >> magnifier [
    ^ board magnifier
]

{ #category : 'accessing' }
MBoardDecorator >> onBoxClicked: aBox [
    " Hook pour les décorateurs - à surcharger "
    ^ self
]

{ #category : 'accessing' }
MBoardDecorator >> width [
    ^ board width
]
