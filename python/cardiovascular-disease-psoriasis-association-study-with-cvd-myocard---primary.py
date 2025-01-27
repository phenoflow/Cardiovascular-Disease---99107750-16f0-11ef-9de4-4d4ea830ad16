# Rosa Parisi, Martin K Rutter, Mark Lunt, Helen S Young, Deborah P M Symmons, Christopher E M Griffiths, Darren M Ashcroft, 2024.

import sys, csv, re

codes = [{"code":"G301z00","system":"readv2"},{"code":"G306.00","system":"readv2"},{"code":"G35..00","system":"readv2"},{"code":"G30z.00","system":"readv2"},{"code":"G35X.00","system":"readv2"},{"code":"G351.00","system":"readv2"},{"code":"G350.00","system":"readv2"},{"code":"G38..00","system":"readv2"},{"code":"Gyu3400","system":"readv2"},{"code":"G353.00","system":"readv2"},{"code":"G304.00","system":"readv2"},{"code":"G384.00","system":"readv2"},{"code":"G38z.00","system":"readv2"},{"code":"G380.00","system":"readv2"},{"code":"G30..17","system":"readv2"},{"code":"323..00","system":"readv2"},{"code":"Gyu3600","system":"readv2"},{"code":"G30..15","system":"readv2"},{"code":"G30yz00","system":"readv2"},{"code":"G30..00","system":"readv2"},{"code":"G308.00","system":"readv2"},{"code":"G301.00","system":"readv2"},{"code":"G30X.00","system":"readv2"},{"code":"G381.00","system":"readv2"},{"code":"G30B.00","system":"readv2"},{"code":"G30y.00","system":"readv2"},{"code":"410.21","system":"readv2"},{"code":"410.9","system":"readv2"},{"code":"410.91","system":"readv2"},{"code":"410.92","system":"readv2"},{"code":"410.82","system":"readv2"},{"code":"410.42","system":"readv2"},{"code":"410.11","system":"readv2"},{"code":"410.01","system":"readv2"},{"code":"410.1","system":"readv2"},{"code":"410.02","system":"readv2"},{"code":"410","system":"readv2"},{"code":"410.3","system":"readv2"},{"code":"410.31","system":"readv2"},{"code":"410.41","system":"readv2"},{"code":"410.81","system":"readv2"},{"code":"410.22","system":"readv2"},{"code":"410.2","system":"readv2"},{"code":"410.8","system":"readv2"},{"code":"410.4","system":"readv2"},{"code":"410.32","system":"readv2"},{"code":"410.12","system":"readv2"},{"code":"I22.0","system":"readv2"},{"code":"I21.2","system":"readv2"},{"code":"I22.9","system":"readv2"},{"code":"I22","system":"readv2"},{"code":"I21","system":"readv2"},{"code":"I21.1","system":"readv2"},{"code":"I23.8","system":"readv2"},{"code":"I23","system":"readv2"},{"code":"I22.8","system":"readv2"},{"code":"I23.0","system":"readv2"},{"code":"I21.9","system":"readv2"},{"code":"I21.4","system":"readv2"},{"code":"I21.0","system":"readv2"},{"code":"I22.1","system":"readv2"},{"code":"I21.3","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cardiovascular-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cardiovascular-disease-psoriasis-association-study-with-cvd-myocard---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cardiovascular-disease-psoriasis-association-study-with-cvd-myocard---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cardiovascular-disease-psoriasis-association-study-with-cvd-myocard---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
