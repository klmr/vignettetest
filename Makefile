rscript = Rscript --no-save --no-restore

.PHONY: check
check: doc
	mkdir -p check
	${rscript} -e "devtools::check(check_dir = 'check')"

.PHONY: vignettes
vignettes:
	${rscript} -e "devtools::build_vignettes()"

.PHONY: doc
doc:
# Note: this needs to be run twice to generate correct S3 exports; see
# <https://github.com/hadley/devtools/issues/1585>
	${rscript} -e "library(devtools); document(); document()"

clean:
	${RM} -r man doc Meta
	${RM} NAMESPACE
