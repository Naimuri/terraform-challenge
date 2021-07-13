# Platform Team Recruitment - Challenge 1

The **challenge-1** directory contains IaC for a basic deployment to AWS based on a brief. There are flaws in both the network and security of this infrastructure. 
It will be your task to identify as many flaws as possible and propose changes accordingly. These can be programmatic changes to the terraform within this directory or documented justification on the suggested change and why you would make it (e.g. pseudocode).

## Infrastructure Diagram
![Infrastructure Diagram](../documentation/resources/infra_diagram.png)

## Brief
A customer has requested a review of their cloud Infrastructure. The customer has ~100 employees spread out across Europe and uses a web app (hosted on the infrastructure described in the infrastructure diagram) to log hours. They are aware, however, that the network as designed is not as secure as needed, or indeed fit for purpose. Your task is to ammend the network in any way you deem to be neccessary to meet the requirements listed below.
This task exists to test your knowledge of cloud infrastructures, AWS services, Infrastructure as Code and security; Any changes you make must either be programmatic (changing the terraform) or documented (description of change, reason for making it, and/or pseudocode).
The customer has also requested a review of the Infrastructure as a whole; what additional services on AWS would help improve the network in a scaleable and secure way?

### Infrastructure Requirements 
* System must be HIGHLY AVAILABLE; the customer requires access to the system around the clock.
* The system should be FAST; the customer's work force is spread around Europe,access is required from multiple regions at acceptable speeds.
* System must be SECURE; pay close attention to the IaC and the properties of the Infrastructure.

### Useful Information
* Ensure any changes you make are documented, as process will be discussed in the interview.
* This challenge is not a make-or-break but allows Naimuri to assess your current knowledge of skills key to a member of the Platform Team!
* Pay close attention to the visibility of elements in the network.  What should be visible to the outside world?
* An infrastructure diagram (using a tool like draw.io) would be welcomed as additional documentation.