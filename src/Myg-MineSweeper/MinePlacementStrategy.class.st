Class {
	#name : 'MinePlacementStrategy',
	#superclass : 'Object',
	#category : 'Myg-MineSweeper',
	#package : 'Myg-MineSweeper'
}

{ #category : 'as yet unclassified' }
MinePlacementStrategy class >> generateMatrix: aBoard width: width height: height [
    self subclassResponsibility
]
