brew tap viggin543/opentikva git@github.com:viggin543/opentikva.git # clone this repo and add its formula to brew index
brew update #  update the formula 
brew install helloworld # installs the helloworld formula in this tap. [ notice the lowercase ]

git commit -am "a hello world formla"; git push;brew update;brew reinstall helloworld ## quick formula patch + reinstall


