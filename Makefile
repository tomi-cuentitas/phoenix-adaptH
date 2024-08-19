DOCNAME=documentation.html


all: install documentation


intro:
	@echo "WELCOME TO PHOENIX:"
	@echo ""
	@sleep 0.5
	@echo "    P arallel"
	@echo "    H ybrid"
	@echo "    O perations for"
	@echo "    E nhanced"
	@echo "    N umerical"
	@echo "    I ntegrations and"
	@echo "  e X ecutions"
	@echo ""
	@echo ""
	@sleep 1

install: intro preparations
	@echo 'Installation as a library...'
	@date > "tmp/install.log"
	
	@pip install -e . >> tmp/install.log
	@echo 'Done. See tmp/install.log for details.'
	
	@date >> "tmp/install.log"
	@echo ""
	@echo ""

uninstall:
	@echo 'Uninstall...'
	@date > "tmp/uninstall.log"
	
	@pip uninstall phoenix >> tmp/uninstall.log
	@echo 'Done. See tmp/uninstall.log for details.'
	
	@date >> "tmp/uninstall.log"
	@echo ""
	@echo ""

preparations:
	@echo 'Preparations...'
	@date > "tmp/prep.log"
	
	@echo '  - hardware check'
	@/bin/echo -n '  - analyzing.'
	@sleep 0.5
	@/bin/echo -n "."
	@sleep 0.5
	@/bin/echo -n "."
	@sleep 0.5
	@echo ""
	@echo '     - haha, you wish, I have not implemented that yet...'
	@sleep 1
	@echo '     - exit...'
	@sleep 0.6
	
	@echo '  - Compilation of aux scripts'
	@sleep 0.3
	@echo '     - Nothing to do here yet.'
	@sleep 0.3
	@echo '     - exit...'
	@echo 'Done. See tmp/prep.log for details.'
	
	@date >> "tmp/prep.log"
	@echo ""
	@echo ""

documentation:
	@echo 'Generating the docs...'
	@date > "tmp/generate_docs.log"
	
	@echo '  - running SPHINX'
	@$(MAKE) --directory=doc -f Makefile html >> tmp/generate_docs.log
	
	@echo '  - generate symlink'
	@rm -rf $(DOCNAME)
	@ln -s doc/_build/html/index.html $(DOCNAME) >> tmp/generate_docs.log
	@echo 'Done. See tmp/generate_docs.log for details.'
	
	@date >> "tmp/generate_docs.log"
	@echo ""
	@echo ""
	
clean:
	@echo 'Tidy up...'
	
	@echo '  - remove documentation...'
	@rm -rf doc/_build/*
	@rm -rf $(DOCNAME)
	@sleep 0.5
	
	@echo '  - remove backend libs...'
	@sleep 0.7
	
	@echo '  - remove logs...'
	@sleep 0.2
	
	@rm -rf tmp/*.log
	@echo "Done."

