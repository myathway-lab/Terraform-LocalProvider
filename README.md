# Terraform-LocalProvider

**Reference document - https://github.com/hashicorp/terraform-provider-local**

1) Let’s create below two tf files. 

- main.tf
    
    ```yaml
    resource "local_file" "mt-foo" {
    content  = "Version1"
    filename = "/home/vagrant/hello_world.txt"
    }
    ```
    
- versions.tf
    
    ```yaml
    terraform {
      required_providers {
        local = {
          source = "hashicorp/local"
          version = "2.4.1"
        }
      }
    }
    
    provider "local" {
      # Configuration options
    }
    ```
    

⇒ Terraform init & plan & apply. 

⇒ Now we will see the new file “/home/vagrant/hello_world.txt” was created and content is “**Version1**”.

2) Let’s update the content to “Version2”. Then reapply. 

- main.tf
    
    ```yaml
    resource "local_file" "mt-foo" {
      content  = "Version2"
      filename = "/home/vagrant/hello_world.txt"
    }
    ```
    

⇒ Terraform init & plan & apply. 

⇒ Now we will see the new file “/home/vagrant/hello_world.txt” was replaced and content is “**Version2**”.

![image](https://github.com/myathway-lab/Terraform-LocalProvider/assets/157335804/68ebe5b7-5480-46b6-adc8-56171536a142)



Add one more local file. 

- main.tf
    
    ```yaml
    resource "local_file" "mt-foo" {
      content  = "Version3"
      filename = "/home/vagrant/hello_world.txt"
    }
    
    resource "local_file" "mt-heal" {
      content  = "Heal the world"
      filename = "/home/vagrant/healtheworld.txt"
    }
    ```
    

⇒ Terraform init & plan & apply. 

![image](https://github.com/myathway-lab/Terraform-LocalProvider/assets/157335804/6c3614a6-098b-4177-adfc-739334f55e7e)
