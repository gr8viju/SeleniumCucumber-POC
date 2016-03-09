# TrueCar-Assignment
Assignment for True Car

-- Installation steps for MAC

brew install ruby 
gem install selenium-cucumber
brew install rbenv ruby-build rbenv-gem-rehash
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile


Follow below guide to install git on your local machine if not already installed
https://help.github.com/articles/set-up-git/ 


Pull the code from GitHub to local directory
git clone https://github.com/gr8viju/TrueCar-Assignment.git

In the terminal navigate to project directory

run below commands to execute the scripts

cucumber features/zipcode_invalidInput.feature --format html --out zipcode_invalidInput_report.html --format pretty
cucumber features/zipcode_validInput.feature --format html --out zipcode_validInput_report.html --format pretty

