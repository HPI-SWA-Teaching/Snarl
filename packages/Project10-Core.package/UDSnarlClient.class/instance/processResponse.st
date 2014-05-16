private-action
processResponse
	| response |
	response := self basicProcessResponse.
	^ self postProcess: response.