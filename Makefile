build:
	npm run build

deploy: build
	cp locations.json dist
	cd dist &&  sed -i'' -e 's/"\/assets/"\.\/assets/g' index.html 
	git add -f dist
	git commit -m 'publish demo'
	git push