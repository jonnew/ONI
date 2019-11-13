current: oni-spec.txt
	pandoc                                              \
	--columns 1                                         \
	--latex-engine=xelatex								\
	-o oni-spec.pdf -s oni-spec.txt

wip: oni-spec-wip.txt
	pandoc                                              \
	--columns 1                                         \
	--latex-engine=xelatex								\
	-o oni-spec-wip.pdf -s oni-spec-wip.txt

clean:
	rm oni-spec.pdf
