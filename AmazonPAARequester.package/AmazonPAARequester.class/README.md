I am AmazonPAARequester, an object to create and retrieve signed URLs for the Amazon Product Advertising API.

Example usage:

amazon := AmazonPAARequester createWithAccessKeyID: ACCESS_KEY_ID secretKey: SECRET_KEY associateTag: ASSOCIATE_TAG.
params := Dictionary newFrom: {'IdType' -> 'ASIN'.
			'IncludeReviewsSummary' -> 'true'.
			'ItemId' -> 'B00164THU8'.
			'Operation' -> 'ItemLookup'.
			'ResponseGroup' -> 'Reviews'.
			'Service' -> 'AWSECommerceService'.}.
amazon retrieveWithParameters: params.
