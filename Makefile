all: api-docs-openapi3.json

api-docs-openapi3.json: api-docs-patched.json patch.sh
	cat api-docs.json | ./patch.sh api-docs-patched.json
	swagger2openapi -o api-docs-openapi3.json api-docs-patched.json

api-docs.json:
	wget https://raw.githubusercontent.com/arangodb/arangodb/devel/js/apps/system/_admin/aardvark/APP/api-docs.json
	#wget https://raw.githubusercontent.com/arangodb/arangodb/3.4/js/apps/system/_admin/aardvark/APP/api-docs.json

