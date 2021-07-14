# PrintScript
## As of 7/14/21 Some changes to the design have been made:
 * There is little to no need to check for whether or not a printer is installed, windows simply opens its queue page if it is.
 * Devices.txt is depracated - the script will be modified to use a local array in order to avoid hosting more than one file for each   OS.
 * 


The project is very simple upon completion both versions should:
  * Install any missing printers listed locally in each file
  * Install/Update Papercut 
  * Both scripts should require little to no shell interaction from users - just a click and run. 
 
 ## As of 7/4/21 The windows version is ready for pre-implementation testing and accomplishes all goals.
  
 ## As of 6/2/21 The MAC version is somewhat finished with printer installation functional.

### TODO:
  * Windows: This version is confirmed to work locally, however id like to do some testing from server side to make sure its working              correctly. 
  * MAC: This version is successfully adding printers, however progress has stopped until papercut is updated. 
