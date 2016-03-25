$input_path = ‘c:\temp3\testraw.txt’
$output_file = ‘c:\temp3\extracted_loans_test2.txt’
# $regex = ‘\b[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}\b’ # version 1. fail 
# $regex = ‘skulder till kreditinstitut’ # version 2. ok 
# $regex = ‘[\n\r].*skulder till kreditinstitut\s*([^\n\r]*)’ # verison 3. fail. 

$regex = ‘\d{6}-\d{4}’  # ver4 kan hämta personnummer hoppass.
# select-string -Path $input_path -Pattern $regex -AllMatches | % { $_.Matches } | % { $_.Value } > $output_file #ver1
select-string -Path $input_path -Pattern $regex  -AllMatches | % { $_.Matches } | % { $_.Value } > $output_file