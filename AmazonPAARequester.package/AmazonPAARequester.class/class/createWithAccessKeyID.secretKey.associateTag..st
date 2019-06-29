initialization
createWithAccessKeyID: access secretKey: secret associateTag: associateTag
	^ self new
		accessKeyID: access;
		secretKey: secret;
		associateTag: associateTag;
		domain: 'us';
		yourself
