Class {
	#name : 'ConstrainedStrategy',
	#superclass : 'MinePlacementStrategy',
	#category : 'Myg-MineSweeper',
	#package : 'Myg-MineSweeper'
}

{ #category : 'as yet unclassified' }
ConstrainedStrategy class >> countAdjacentMines: matrix atColumn: col atRow: row [
    "Compte le nombre de mines dans les 8 cases adjacentes"
    | count |
    count := 0.
    (col - 1 to: col + 1) do: [ :c |
        (row - 1 to: row + 1) do: [ :r |
            ((c = col and: [ r = row ]) not and: [
                c >= 1 and: [ c <= matrix width and: [
                    r >= 1 and: [ r <= matrix height ] ] ] ]) ifTrue: [
                        (matrix at: c@r) isMineBox ifTrue: [ 
                            count := count + 1 ] ] ] ].
    ^ count
]

{ #category : 'as yet unclassified' }
ConstrainedStrategy class >> generateMatrixwidth: width height: height [

    "Nouvel algorithme : placement aléatoire avec mise à jour des compteurs"
| matrix |
    matrix := CTNewArray2D width: 5 height: 5 tabulate: [ :column :row |
        MBox randomCase ].
    self updateSafeCasesNumbers: matrix.
    
    ^ MBoard createWithMatrix: matrix

]

{ #category : 'as yet unclassified' }
ConstrainedStrategy class >> updateSafeCasesNumbers: matrix [
    "Met à jour le nombre de mines adjacentes pour chaque case safe"
    1 to: matrix width do: [ :col |
        1 to: matrix height do: [ :row |
            | currentBox |
            currentBox := matrix at: col@row.
            currentBox isSafeBox ifTrue: [
                | adjacentMines |
                adjacentMines := self countAdjacentMines: matrix atColumn: col atRow: row.
                "Mettre à jour la case avec le bon nombre"
                currentBox adjacentMinesCount: adjacentMines ] ] ]
]
