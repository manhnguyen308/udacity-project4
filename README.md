## STATUS BADGE
[![<ORG_NAME>](https://circleci.com/gh/manhnguyen308/udacity-project4.svg?style=svg)](<LINK>)


## Project Overview
This project is for building & deploying a Machine Learning Microservice API to Kubernetes. This includes:
- Running a docker container locally.
- Upload docker image into your own docker container.
- Deploy project image into Kubenetes using image from docker.


## Project requirements
The below libraries are required for running this project:
- Python: 3.7.3
- Docker
- Hadolint
- Kubenetes (Minikube)

## Project instructions
Execute the below steps in order:

1. Navigate to the project folder.

2. Setup local Project environment:
- make setup
- make install

3. Run lint check:
- make lint

4. Run docker in local: 
- ./run_docker.sh

5. Make Prediction in docker: 
- ./make_prediction.sh

6. Upload local docker image into your docker repository: 
- ./upload_docker.sh

7. Start local kubernetes environment:
- minikube start

8. Deploy application on the Kubenetes: Make sure that you stop the local docker environment first, since it's running on same port.
- ./run_kubernetes.sh

9. You should see an error due to container is creating, wait for few minutes or run a check:
- kubectl get pods

10. When you see "Running" status in your kubenetes container, run the kubenetes script again.

11. Make Prediction for kubenetes:
- ./make_prediction.sh


## Main project files explaination:
- Dockerfile: scripts for deploying python app to docker environment.
- Makefile: scripts for application setup and lint test.
- app.py: main application code.
- run_docker.sh: scripts for build image & deploying local docker environment.
- make_prediction.sh: scripts for sending input data to docker application, then it will display the prediction value.
- upload_docker.sh: scripts for upload local docker image into a public docker container.
- run_kubernetes.sh: scripts for deploying to local kubenetes environment, using a docker container image.