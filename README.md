# Assessment Exams
Note: This image currently runs assessment exams in "demo" mode which means it generates a random STUDENT ID.  When starting an exam you must specify which exam you would like to download.  eg: `web-01`, `web-02d`, etc

## Getting Started

Please carefully follow the instructions below to get started.

----
### 1) Ensure you have Podman (preferred) or Docker installed on your system

You must have either Podman or Docker (not the desktop versions) installed on your system.  Both of these are easily installed on any system including WSL2.  Podman is preferred as it is more secure does not requre root to run containers.

----
### 1)  Clone this project
The example below is for running Web #1.  You will change the directory name for other exams. (exam2, exam3, etc)

```terminal
mkdir exams
cd exams
git clone <repo url> exam1
cd exam1
```

----
### 2)  Start the Exam
Specify the exam that you want to start.

For demo-mode exams: `web-01`, `web02d`, `web-03gg`, `web-04yo`, `web-05sh`, `web-06-rb`

The container will create the answer files for this exam in the `./answers` directoty

```terminal
./start.sh [YOUR EXAM CODE]
```

----
### 5)  Edit and Run the Questions
Edit the .js files and run the questions

```terminal
./question.sh 1
```