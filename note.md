pid > 0 signal send to specific process ID.
pid 0 means signal send to all processes in current process group.
-1 returned from fork() means failed to create process.

SIGUSR1 & SIGUSR2 user-defined signals
SIGKILL terminate process
SIGSTOP pause process
SIGCONT continue process

CTRL+Z SIGTSTP suspend process, bring it back with "fg" command.

fflush(FILE *stream) to immediate written to stream.
kill() function is used to send a signal to a specified process or group of processes.
pause() sleep process and wait for signal to continue.
getppid() to get parent process id.

