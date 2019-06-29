initialization
createWithAccessKeyID: access secretKey: secret associateTag: associateTag locale: locale
	^ self new
		accessKeyID: access;
		secretKey: secret;
		associateTag: associateTag;
		domain: locale;
		yourself
