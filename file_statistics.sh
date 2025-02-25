echo "Total number of python source files found"
ls -R | grep -F ".py" | wc -l


echo "\nLines count on all python source files"
find . -name '*.py' -exec cat {} + | wc -l
