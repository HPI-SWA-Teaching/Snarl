resource management
ensureExistance
	self resources 
		do: [:resource| 
			  self ensureExistanceOfResource: resource]