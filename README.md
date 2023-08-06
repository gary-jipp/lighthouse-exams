# Assessment Exams

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
git clone git@github.com:gary-jipp/lighthouse-exams.git exam1
cd exam1
```

----
### 2)  Start the Exam
The container will create the answer files for this exam in the `./answers` directory

```terminal
./start.sh [YOUR EXAM CODE]
```

----
### 5)  Edit and Run the Questions
Edit the files in `answers` and run the questions

```terminal
./question.sh [QUESTION NUMBER]
```