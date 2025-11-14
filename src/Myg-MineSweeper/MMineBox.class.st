"
I am a box with a mine in the mine field.
If I am clicked by the player, he dies.
"
Class {
	#name : 'MMineBox',
	#superclass : 'MBox',
	#category : 'Myg-MineSweeper-Model',
	#package : 'Myg-MineSweeper',
	#tag : 'Model'
}

{ #category : 'clicking' }
MMineBox >> click [
1halt.
	self isFlagged ifTrue: [ ^ self ].
	self announcer announce: MBoxExplosionAnnouncement new.
	self board gameEnded ifFalse: [ self board playerLoose ].
	
	"on incrémente le nombre de clic"
	self board incrementCounter.
	self board counterText text: ('The number of selection : ', (self board counter asString)) asRopedText .
	
	
]

{ #category : 'testing' }
MMineBox >> isMineBox [
	^ true
]

{ #category : 'printing' }
MMineBox >> printOn: aStream [
	aStream << 'o'
]
