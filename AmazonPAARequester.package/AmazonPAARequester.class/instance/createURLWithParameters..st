public
createURLWithParameters: params
	| uri paramsSorted pairs stringToSign signature signatureEncoded |
	uri := '/onca/xml'.
	params at: 'AssociateTag' put: associateTag.
	params at: 'AWSAccessKeyId' put: accessKeyID.
	params at: 'Timestamp' put: self timestamp.
	paramsSorted := params associations asSortedCollection
		do: [ :assoc | 
			| key value |
			key := assoc key.
			value := assoc value ].
	pairs := ''.
	(paramsSorted as: OrderedDictionary) keysAndValuesDo: [ :k :v | pairs := pairs , k urlEncoded , '=' , v urlEncoded , '&' ].
	pairs := pairs first: pairs size - 1.
	stringToSign := 'GET' , String lf , domain , String lf , uri , String lf , pairs.
	signature := self hmacSHA256: stringToSign key: secretKey.
	signatureEncoded := signature base64Encoded urlEncoded.
	^ 'http://' , domain , uri , '?' , pairs , '&Signature=' , signatureEncoded
