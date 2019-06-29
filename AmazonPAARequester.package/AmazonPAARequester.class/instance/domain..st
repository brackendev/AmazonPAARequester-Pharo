private - accessing
domain: aString
	aString = 'br'
		ifTrue: [ ^ domain := 'webservices.amazon.com.br' ].
	aString = 'ca'
		ifTrue: [ ^ domain := 'webservices.amazon.ca' ].
	aString = 'cn'
		ifTrue: [ ^ domain := 'webservices.amazon.cn' ].
	aString = 'de'
		ifTrue: [ ^ domain := 'webservices.amazon.de' ].
	aString = 'es'
		ifTrue: [ ^ domain := 'webservices.amazon.es' ].
	aString = 'fr'
		ifTrue: [ ^ domain := 'webservices.amazon.fr' ].
	aString = 'in'
		ifTrue: [ ^ domain := 'webservices.amazon.in' ].
	aString = 'it'
		ifTrue: [ ^ domain := 'webservices.amazon.it' ].
	aString = 'jp'
		ifTrue: [ ^ domain := 'webservices.amazon.co.jp' ].
	aString = 'mx'
		ifTrue: [ ^ domain := 'webservices.amazon.com.mx' ].
	aString = 'uk'
		ifTrue: [ ^ domain := 'webservices.amazon.co.uk' ].
	domain := 'webservices.amazon.com'
