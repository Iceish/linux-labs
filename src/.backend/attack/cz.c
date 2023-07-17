#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>
#include <sys/prctl.h>
#include <signal.h>

// This script creates zombies process for the linux labs.





void signalHandler(int signum) {
    if (signum != SIGKILL) {
        printf("Muahahah, you can't kill me, I'm too strong :) \n");
    }
}


int main(int argc, char *argv[]) {
    if (argc < 2) {
        printf("Usage: %s <num_processes>\n", argv[0]);
        return 1;
    }

    int numProcesses = atoi(argv[1]);
    if (numProcesses <= 0) {
        printf("Invalid argument: num_processes must be a positive integer\n");
        return 1;
    }
	
	
    signal(SIGINT, signalHandler);
    signal(SIGTERM, signalHandler);

    for (int i = 0; i < numProcesses; i++) {
        pid_t child_pid = fork();
        if (child_pid < 0) {
            printf("Fork failed\n");
            return 1;
        } else if (child_pid == 0) {
            // Child process
            prctl(PR_SET_NAME, "Enemy", 0, 0, 0);
            exit(0);
        }
    }

    // Parent process
	
    while (1) {
        // Parent process continues running indefinitely
        sleep(1);
    }

    return 0;
}

