import csv

with open('test.csv', 'w', newline = '') as file:
    writer = csv.writer(file)
    field = ['name', 'grade', 'checkout date', 'object checkout', 'duration']
    writer.writerow(field)
    writer.writerow(['Stephen', '9', '4/30/2024', 'Arduino XS 2000', '10 days'])