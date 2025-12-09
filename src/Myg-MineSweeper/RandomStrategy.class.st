Class {
	#name : 'RandomStrategy',
	#superclass : 'MinePlacementStrategy',
	#category : 'Myg-MineSweeper',
	#package : 'Myg-MineSweeper'
}

{ #category : 'as yet unclassified' }
RandomStrategy class >> generateMatrixwidth: width height: height [
    "Ancien algorithme (randomCase) : placement aléatoire simple sans mise à jour des compteurs"
    ^ CTNewArray2D width: width height: height tabulate: [ :column :row |
        MBox randomCase ]
]
