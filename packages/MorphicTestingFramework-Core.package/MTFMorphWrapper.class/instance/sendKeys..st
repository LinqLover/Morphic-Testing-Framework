interacting
sendKeys: aString

	self morphs do: [ :morph |
		aString do: [ :character | morph keyStroke: 
			(self generateKeyboardEvent: #keystroke with: character on: morph).	
			self wait.
		]
	].