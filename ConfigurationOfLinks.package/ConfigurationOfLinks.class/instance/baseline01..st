baselines
baseline01: spec
	<version: '0.1-baseline'>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec repository: 'gitfiletree://' , FileSystem workingDirectory fullName.
			spec
				project: 'Pharo-EDA-Common'
				with: [ spec
						className: 'ConfigurationOfPharoEDA';
						repository: 'gitfiletree://' , FileSystem workingDirectory fullName , '/pharo-eda-common';
						versionString: #bleedingEdge ].
			spec
				project: 'Mustache'
				with: [ spec
						className: #ConfigurationOfMustache;
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/NorbertHartl/Mustache/main' ].
			spec
				project: 'Zinc-Zodiac'
				with: [ spec
						className: #ConfigurationOfZincHTTPComponents;
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/ZincHTTPComponents/main' ].
			spec
				package: 'LK-Domain'.
			spec
				group: 'core' with: #('LK-Domain');
				group: 'tests' with: #();
				group: 'default' with: #('core' 'tests') ]