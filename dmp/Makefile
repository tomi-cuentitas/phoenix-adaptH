DOCNAME=documentation.html


all: install documentation


intro:
	@echo "WELCOME TO PHOENIX:"
	@echo ""
	@sleep 0.3
	@echo "    P arallel"
	@echo "    H ybrid"
	@echo "    O perations for"
	@echo "    E nhanced"
	@echo "    N umerical"
	@echo "    I ntegrations and"
	@echo "  e X ecutions"
	@echo ""
	@echo ""
	@sleep 0.5

install: intro preparations
	@echo 'Installation as a library...'
	@date > tmp/install.log
	
	@pip install -e . -r requirements.txt 2>&1 | cat >> tmp/install.log; CODE=$$?; \
	echo "    Done. Exit code $${CODE}. See tmp/install.log for details."
	
	@date >> tmp/install.log
	@echo ""
	@echo ""

uninstall:
	@echo 'Uninstall...'
	@date > tmp/uninstall.log
	
	@pip uninstall -y phoenix 2>&1 | cat >> tmp/uninstall.log; CODE=$$?; \
	echo "    Done. Exit code $${CODE}. See tmp/uninstall.log for details."
	
	@date >> tmp/uninstall.log
	@echo ""
	@echo ""

preparations:
	@echo 'Preparations...'
	@date > tmp/prep.log
	
	@echo '  - hardware check'
	@/bin/echo -n '  - analyzing.'
	@sleep 0.2
	@/bin/echo -n "."
	@sleep 0.2
	@/bin/echo -n "."
	@sleep 0.2
	@echo ""
	@echo '     - haha, you wish, I have not implemented that yet...'
	@sleep 0.5
	@echo '     - exit...'
	@sleep 0.2
	
	@echo '  - Compilation of aux scripts'
	@sleep 0.2
	@echo '     - Nothing to do here yet.'
	@sleep 0.1
	@echo '     - exit...'
	@echo 'See tmp/prep.log for details.'
	
	@date >> tmp/prep.log
	@echo ""
	@echo ""

documentation:
	@echo 'Generating the docs...'
	@date > tmp/generate_docs.log
	
	@echo '  - running SPHINX'
	@$(MAKE) --directory=doc -f Makefile html 2>&1 | cat >> tmp/generate_docs.log; CODE=$$?; \
	echo "    Done. Exit code $${CODE}. See tmp/generate_docs.log for details."

	@echo '  - generate symlink'
	@rm -rf $(DOCNAME)
	@ln -s doc/_build/html/index.html $(DOCNAME) 2>&1 | cat >> tmp/generate_docs.log
	
	@date >> tmp/generate_docs.log
	@echo ""
	@echo ""
	
clean:
	@echo 'Tidy up...'
	
	@echo '  - remove documentation...'
	@rm -rf doc/_build/*
	@rm -rf $(DOCNAME)
	@sleep 0.2
	
	@echo '  - remove backend libs...'
	@sleep 0.2
	
	@echo '  - remove logs...'
	@sleep 0.1
	
	@rm -rf tmp/*.log
	@echo "Done."

