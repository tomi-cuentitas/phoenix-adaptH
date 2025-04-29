echo "Total number of python source files found"
cd phoenix
ls -R | grep -E ".py$" | wc -l


echo "\nLines count on all python source files"
find . -name '*.py' -exec cat {} + | wc -l
