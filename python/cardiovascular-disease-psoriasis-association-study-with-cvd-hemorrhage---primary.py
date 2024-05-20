# Rosa Parisi, Martin K Rutter, Mark Lunt, Helen S Young, Deborah P M Symmons, Christopher E M Griffiths, Darren M Ashcroft, 2024.

import sys, csv, re

codes = [{"code":"G614.00","system":"readv2"},{"code":"Gyu6100","system":"readv2"},{"code":"G620.00","system":"readv2"},{"code":"G61..12","system":"readv2"},{"code":"G61X.00","system":"readv2"},{"code":"G615.00","system":"readv2"},{"code":"G61X100","system":"readv2"},{"code":"G61X000","system":"readv2"},{"code":"G605.00","system":"readv2"},{"code":"G613.00","system":"readv2"},{"code":"G603.00","system":"readv2"},{"code":"Gyu6200","system":"readv2"},{"code":"G606.00","system":"readv2"},{"code":"G621.00","system":"readv2"},{"code":"G61..11","system":"readv2"},{"code":"G62z.00","system":"readv2"},{"code":"G604.00","system":"readv2"},{"code":"G61z.00","system":"readv2"},{"code":"G61..00","system":"readv2"},{"code":"G62..00","system":"readv2"},{"code":"Gyu6F00","system":"readv2"},{"code":"G60z.00","system":"readv2"},{"code":"G60..00","system":"readv2"},{"code":"432.9","system":"readv2"},{"code":"431","system":"readv2"},{"code":"430","system":"readv2"},{"code":"I61.2","system":"readv2"},{"code":"I62.9","system":"readv2"},{"code":"I60.7","system":"readv2"},{"code":"I61.9","system":"readv2"},{"code":"I61","system":"readv2"},{"code":"I61.8","system":"readv2"},{"code":"I60.4","system":"readv2"},{"code":"I60.6","system":"readv2"},{"code":"I60.3","system":"readv2"},{"code":"I60.5","system":"readv2"},{"code":"I64","system":"readv2"},{"code":"I60.9","system":"readv2"},{"code":"I62","system":"readv2"},{"code":"I60.8","system":"readv2"},{"code":"I60","system":"readv2"},{"code":"I60.2","system":"readv2"},{"code":"I61.4","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cardiovascular-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cardiovascular-disease-psoriasis-association-study-with-cvd-hemorrhage---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cardiovascular-disease-psoriasis-association-study-with-cvd-hemorrhage---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cardiovascular-disease-psoriasis-association-study-with-cvd-hemorrhage---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
