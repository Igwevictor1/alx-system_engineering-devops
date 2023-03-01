# Web infrastructure design

![image](https://user-images.githubusercontent.com/24642339/221423495-c79471ea-8b5e-4c93-acc4-9414b99f107b.png)


# Requirements
## General
* A README.md file, at the root of the folder of the project, is mandatory
* For each task, once you are done whiteboarding (on a whiteboard, piece of paper or software or your choice), take a picture/screenshot of your diagram
* This project will be manually reviewed:
* As each task is completed, the name of that task will turn green
* Upload a screenshot, showing that you completed the required levels, to any image hosting service (I personally use imgur but feel free to use anything you want).
* For the following tasks, insert the link from of your screenshot into the answer file
* After pushing your answer file to GitHub, insert the GitHub file link into the URL box
* You will also have to whiteboard each task in front of a mentor, staff or student - no computer or notes will be allowed during the whiteboarding session
* Focus on what you are being asked:
* Cover what the requirements mention, we will explore details in a later project
* Keep in mind that you will have 30 minutes to perform the exercise, you will get points for what is asked in requirements
* Similarly in a job interview, you should answer what the interviewer asked for, be careful about being too verbose - always ask the interviewer if going into details is necessary - speaking too much can play against you
* In this project, again, avoid going in details if not asked

# 0. Simple web stack
![1egt96U - Imgur](https://user-images.githubusercontent.com/24642339/221438056-edb6dd83-41d8-40ca-89a9-51e37fc5ffb6.jpg)

# Requirements:

## You must use:
* 1 server
* 1 web server (Nginx)
* 1 application server
* 1 application files (your code base)
* 1 database (MySQL)
* 1 domain name foobar.com configured with a www record that points to your server IP 8.8.8.8
*You must be able to explain some specifics about this infrastructure:
* What is a server
* What is the role of the domain name
* What type of DNS record www is in www.foobar.com
* What is the role of the web server
* What is the role of the application server
* What is the role of the database
* What is the server using to communicate with the computer of the user requesting the website
## You must be able to explain what the issues are with this infrastructure:
* SPOF
* Downtime when maintenance needed (like deploying new code web server needs to be restarted)
* Cannot scale if too much incoming traffic

# 1. Distributed web infrastructure

![1-distributed_web_infrastructure](https://user-images.githubusercontent.com/24642339/221441885-fe20fef4-6f41-4c52-a4be-889778bd1460.PNG)


# Requirements:

## You must add:
* 2 servers
* 1 web server (Nginx)
* 1 application server
* 1 load-balancer (HAproxy)
* 1 set of application files (your code base)
* 1 database (MySQL)

## You must be able to explain some specifics about this infrastructure:
* For every additional element, why you are adding it
* What distribution algorithm your load balancer is configured with and how it works
* Is your load-balancer enabling an Active-Active or Active-Passive setup, explain the difference between both
* How a database Primary-Replica (Master-Slave) cluster works
* What is the difference between the Primary node and the Replica node in regard to the application
## You must be able to explain what the issues are with this infrastructure:
* Where are SPOF
* Security issues (no firewall, no HTTPS)
* No monitoring

# 2. Secured and monitored web infrastructure
![2-secured_and_monitored_web_infrastructure](https://user-images.githubusercontent.com/24642339/221444434-6da4e542-fa33-4479-a901-511d6a4ecb7a.PNG)

 # Requirements:

# You must add:
* 3 firewalls
* 1 SSL certificate to serve www.foobar.com over HTTPS
* 3 monitoring clients (data collector for Sumologic or other monitoring services)
## You must be able to explain some specifics about this infrastructure:
* For every additional element, why you are adding it
* What are firewalls for
* Why is the traffic served over HTTPS
8 What monitoring is used for
* How the monitoring tool is collecting data
* Explain what to do if you want to monitor your web server QPS
* You must be able to explain what the issues are with this infrastructure:
* Why terminating SSL at the load balancer level is an issue
* Why having only one MySQL server capable of accepting writes is an issue
* Why having servers with all the same components (database, web server and application server) might be a problem

# 3. Scale up
![3-scale_up](https://user-images.githubusercontent.com/24642339/221446114-b9ecc74c-37ff-4db1-963a-09ac283b5bd9.PNG)

# Requirements:

## You must add:
* 1 server
* 1 load-balancer (HAproxy) configured as cluster with the other one
* Split components (web server, application server, database) with their own server
* You must be able to explain some specifics about this infrastructure:
* For every additional element, why you are adding it
