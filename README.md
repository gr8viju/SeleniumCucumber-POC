# TrueCar-Assignment
Assignment for True Car

-- Installation steps for MAC

brew install ruby 
gem install selenium-cucumber
brew install rbenv ruby-build rbenv-gem-rehash
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile

Pull the code from GitHub to local directory

In the terminal navigate to project directory


run below commands to execute the scripts

cucumber features/zipcode_invalidInput.feature --format html --out report.html --format pretty
cucumber features/zipcode_validInput.feature --format html --out report.html --format pretty

