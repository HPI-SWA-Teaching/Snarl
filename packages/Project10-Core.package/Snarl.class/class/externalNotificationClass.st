configuration
externalNotificationClass
    ^SnarlNotification subclasses
		detect: [:cls | cls platform = Smalltalk platformName] 
		ifNone: [^SnarlNotificationIntern].