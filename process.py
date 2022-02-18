# "requires" the file and to be able to read it
log_file = open("um-server-01.txt")

# defines a function that takes in the opened file
def sales_reports(log_file):
    # for-in loop through the open file, "line" is each line in the file
    for line in log_file:
        # strips any whitespace from the end of the line
        line = line.rstrip()
        # gets the first three characters on the line (ex. Sat)
        day = line[0:3]
        # check if the day is "Mon". Did I really have to explain that one? C'mon man, what do you take me for?
        if day == "Mon":
            # not even gonna type it out this time
            print(line)

log_file.seek(0,0)

def large_sales_reports(log_file):
    for line in log_file:
        line = line.rstrip()
        split = line.split(" ")

        if int(split[2]) > 10:
            print(line)

# invokes the function
# sales_reports(log_file)
large_sales_reports(log_file)
