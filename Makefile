all: zip import

zip:
	rm ca.cybera.Tomcat.zip || true
	zip -r ca.cybera.Tomcat.zip *

import:
	murano package-import --is-public --exists-action u ca.cybera.Tomcat.zip
