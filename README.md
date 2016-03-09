# TrueCar-Assignment
Assignment for True Car

-- Ruby Installation steps for MAC  OSX El Capitan
		Note: In latest Mac OSX releases Ruby is installed
1. open a terminal in OSX
2. brew install ruby 

-- Ruby Installation steps for Windows 7 and above
1. Go to site http://railsinstaller.org/en
2. Download Windows Ruby 2.2
3. Install the downloaded executable
4. From http://rubyinstaller.org/downloads/ download the webkit required for 32bit/64 bit windows version
5. Install the webkit


Download the platform specific bundle from below address for webdrivers such as Chrome and IE

https://drive.google.com/folderview?id=0B9vZ2s1ustr6M3pGMFQtQzY0Qk0&usp=sharing

add their driver’s path in  the system variable. E.g. create a directory “webdrivers” keep driver’s executable file in it and set “webdrivers” directory path in system variable. 


-- Selenium cucumber installation

1. gem install selenium-cucumber


-- Also the detailed steps to install Ruby for selenium are mentioned in below web address
http://seleniumcucumber.info/desktop/

-- Install Firefox web browser

-- Download the project from GitHub

1. Follow below guide to install git on your local machine if not already installed
	https://help.github.com/articles/set-up-git/ 
2. Once Git is setup
3. Pull the code from GitHub to local directory
4. Open the terminal
5. Navigate to desired directory where you want to download the project from git
6. Execute below command from the terminal - 
	git clone https://github.com/gr8viju/TrueCar-Assignment.git

-- Execute the Feature files 

1. In the terminal type 
	cd TrueCar-Assignment/

2. From terminal run below commands to execute each feature script. By default the scripts will run on Firefox browser

cucumber features/zipcode_invalidInput.feature --format html --out zipcode_invalidInput_report.html --format pretty
cucumber features/zipcode_validInput.feature --format html --out zipcode_validInput_report.html --format pretty

