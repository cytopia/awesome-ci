# Dependencies

Files in here must be placed in an executable path, such as `/usr/bin` or `/usr/local/bin` and must be executable.

Those files are needed, as the command itself could not have been placed inside `sh -c ""` in the corresponding check due to the system's limit of command line argument length.

