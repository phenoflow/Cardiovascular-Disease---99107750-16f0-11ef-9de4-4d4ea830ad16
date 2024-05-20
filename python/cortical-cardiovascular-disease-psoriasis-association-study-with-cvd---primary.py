# Rosa Parisi, Martin K Rutter, Mark Lunt, Helen S Young, Deborah P M Symmons, Christopher E M Griffiths, Darren M Ashcroft, 2024.

import sys, csv, re

codes = [{"code":"G610.00","system":"readv2"},{"code":"I61.1","system":"readv2"},{"code":"I61.0","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cardiovascular-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cortical-cardiovascular-disease-psoriasis-association-study-with-cvd---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cortical-cardiovascular-disease-psoriasis-association-study-with-cvd---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cortical-cardiovascular-disease-psoriasis-association-study-with-cvd---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)