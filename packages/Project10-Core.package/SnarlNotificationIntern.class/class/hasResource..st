resources
hasResource: aName
	self resources 
		anySatisfy: [:res| 
					(res at: 1 == aName,'.png')]