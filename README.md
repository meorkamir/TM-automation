# TM-automation
TM assessment Q2

### Installation steps
1) Clone project into your end
2) Execute install.bat file (under installation folder)
3) Ensure browser driver provided in pythonpath folder (from environment setup)
4) Execute command to run the script  
   robot --outputdir ..\report -v browser_type:chrome  tests   (run entire test case inside test folder)  
   robot --outputdir ..\report -v browser_type:chrome -i "testShopee"  tests   (tagging -i to selectively run any test case)  
5) Retrieve execution output from folder

## Acknowledgement
1) Robotframework https://robotframework.org 
