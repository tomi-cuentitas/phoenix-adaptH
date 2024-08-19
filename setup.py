from setuptools import setup

setup(
   name='phoenix',
   version='0.1',
   description='Parallel Hybrid Operations for Enhanced Numerical Integrations and eXecutions',
   author='Matthias Kost',
   author_email='matthias.kost@uni-ulm.de',
   packages=['phoenix'],        # same as name
   install_requires=['numpy'],  # external packages as dependencies
   scripts=[
#      "bin/dosomething.py",
   ]                            # scripts will be transferred to PATH and made available as executables
   # see https://python-packaging.readthedocs.io/en/latest/command-line-scripts.html#the-scripts-keyword-argument 
)
