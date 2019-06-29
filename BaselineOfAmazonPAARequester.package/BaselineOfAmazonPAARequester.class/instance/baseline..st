baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec package: 'AmazonPAARequester'.
			spec
				project: 'ZincHTTPComponents'
				with: [ spec
						className: #ConfigurationOfZincHTTPComponents;
						versionString: #stable;
						repository: 'http://mc.stfx.eu/ZincHTTPComponents' ] ]
