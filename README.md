# melodic

## Setup

### Dependencies
* VirtualBox
* Vagrant
* VSCode
  * Remote Development

### Environment

* Run the below command to provision dev environment
  ```
  vagrant up
  ```
* Run the below command to output the ssh information for the vm.
  
  Mac:
  ```
  vagrant ssh-config --host "melodic" >> ~/.ssh/config
  ```
  Windows:
  ```
  vagrant ssh-config --host "melodic" >> %USERPROFILE%\.ssh\config
  ```

