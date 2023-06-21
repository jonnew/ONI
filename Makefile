all: hw api

hw: oni-hw-spec.txt
	pandoc \
	--columns 1 \
	--strip-comments \
	--pdf-engine=xelatex \
	--lua-filter=check-links.lua \
	-o oni-hw-spec.pdf -s oni-hw-spec.txt

api: hw

clean:
	rm oni-hw-spec.pdf
	rm oni-api-spec.pdf
