
# Test Case Checker - CMPSC470: SemanticChecker
Checks your program's output against the given test outputs
## Set up
You probably will need to run chmod +x on it...</br>
Place it in the folder containing the .java / .y / .flex files </br>
I have paths hardcoded, but if you just extracted the .zip we were given you should be fine </br>
## Usage
Just run it with "./checker" and let it do its thing </br>
it will output "GOOD!" if you pass that test case, otherwise it will print in the following form </br>
ERROR ON FILE </br>
[minc file name] </br>
EXPECT... </br>
[expected output] </br>
RECIEVED... </br>
[what your program outputted] </br>
## Note
If any future semester people find this it should be fine to use contact me some how some way and I can update it if need be </br>
So, For this to work w/ HW1, you will need to restructure the folders in the following way </br>
[path to folder]/sample/minc (minc files go here) </br>
[path to folder]/sample/output (output files go here) </br>
[path to folder]/src/  (java and checker.sh) </br>
Inside checker.sh the hardcoded "java SemanticChecker" will need to be "java Program"
I'll update this as I'm made aware of the new homeworks
