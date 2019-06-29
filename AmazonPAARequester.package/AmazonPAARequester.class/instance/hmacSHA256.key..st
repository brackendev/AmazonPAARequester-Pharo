private
hmacSHA256: aString key: aKey
	^ SHA256 new hmac
		key: aKey asByteArray;
		digestMessage: aString asByteArray
