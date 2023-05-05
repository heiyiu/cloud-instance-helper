# cloud-instance-helper

cloud-instance-helper is a cloud infrastructure (currently only support hertzner cloud) tool. The backend is currently configured to be terraform cloud. 
By push or manually on terraform cloud, we can create a small vm on hertzner, along with the correct firewall rules and ssh access. 
Github action is used to automatically triggered the workflow, but the terraform steps are ran on the terraform cloud.

## Installation
No installation required.

## Usage
Clone the repo after setting up terraform cloud access and the required secrets in the Github actions.
