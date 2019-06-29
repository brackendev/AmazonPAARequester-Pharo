public
retrieveWithParameters: params
	| client |
	client := ZnClient new.
	client get: (self createURLWithParameters: params).
	client isSuccess
		ifTrue: [ ^ client response entity string ]
		ifFalse: [ ^ nil ]
