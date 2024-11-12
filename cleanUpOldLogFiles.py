import os

# function to clean up old log files
def clean_up_log_files():
    # get a list of all log files in the current directory
    log_files = [f for f in os.listdir() if f.endswith(".log")]
    # sort the log files by creation time
    log_files.sort(key=os.path.getctime)
    # delete the oldest log file
    os.remove(log_files[0])

# call the function to clean up old log files
clean_up_log_files()