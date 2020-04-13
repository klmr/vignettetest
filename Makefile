.PHONY: check
check:
	mkdir -p check
	Rscript --no-save --no-restore -e "devtools::check(check_dir = 'check')"

clean:
	${RM} -r man doc Meta
	${RM} NAMESPACE
