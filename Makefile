build:
	rm -f dist.zip
	cd src && \
	echo "\e[32mPacking\e[0m src"; \
	zip -r ../dist.zip * ../node_modules

build-layers:
	cd layers && \
	for f in *; do \
		echo "\e[32mPacking\e[0m $$f"; \
		rm -f ../dist-layers-$$f.zip; \
		cd $$f; \
		zip ../../dist-layers-$$f.zip *; \
	done
