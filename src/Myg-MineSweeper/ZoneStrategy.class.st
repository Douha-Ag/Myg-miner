Class {
	#name : 'ZoneStrategy',
	#superclass : 'MinePlacementStrategy',
	#category : 'Myg-MineSweeper',
	#package : 'Myg-MineSweeper'
}

{ #category : 'as yet unclassified' }
ZoneStrategy class >> generateMatrixwidth: width height: height [
    "nouvel algo : les mines sont regroupés dans une zone"

    | matrix trapZoneRows trapZoneCols zoneSize startRow startCol|
    1halt.
    matrix := CTNewArray2D width: width height: height .
    zoneSize := 2.
 "Choisir aléatoirement la position de la zone piégée"
    startRow := (1 to: (height - zoneSize + 1)) atRandom.
    startCol := (1 to: (width - zoneSize + 1)) atRandom.
    "Créer la zone piégée"
    trapZoneRows := (startRow to: startRow + zoneSize - 1) asArray.
    trapZoneCols := (startCol to: startCol + zoneSize - 1) asArray.
    
    "Remplir la zone piégée avec des mines"
    trapZoneRows do: [:row |
        trapZoneCols do: [:col |
            matrix at: col@row put: (MBox mine). 
        ]].
    
    "Remplir le reste de la matrice avec des cases safe"
    (1 to: width) do: [:col |
        (1 to: height) do: [:row |
            ( (trapZoneRows includes: row) and: [trapZoneCols includes: col] ) ifFalse: [
                matrix at: col@row put: (MBox safe)
            ].
        ].
    ].
    
    ^MBoard createWithMatrix: matrix

]
