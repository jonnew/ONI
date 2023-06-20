current: oni-spec.txt
	pandoc \
	--columns 1 \
	--strip-comments \
	--pdf-engine=xelatex \
	--lua-filter=check-links.lua \
	-o oni-spec.pdf -s oni-spec.txt

wip: oni-spec-wip.txt
	pandoc \
	--columns 1 \
	--strip-comments \
	--pdf-engine=xelatex \
	--lua-filter=check-links.lua \
	-o oni-spec-wip.pdf -s oni-spec-wip.txt

clean:
	rm oni-spec-wip.pdf
	rm oni-spec.pdf
