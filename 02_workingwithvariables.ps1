<#Working with Variables#>
<#Variables are storage containers
'$' before the name
System variables
Get-Variable
PowerShell is dynamically typed
Will turn what you have into what you need if possible
Variables can be cast [int]
Data types
int
32-bit signed integer
long
64-bit signed integer
string
string of unicode characters
char
unicode 16-bit character
bool
true/false
byte
8-bit unsigned character
double
double-precision 64-bit floating-point number
decimal
128-bit decimal value
single
single-precision 32-bit floating-point number
array
array of values
xml
XML document
hashtable
hashtable object (like a dictionary object)#>
$a = 12
$a | Get-Member
$b = "12"
$b.GetType()
$c = $a + $b
$c
$c.GetType()
$b.GetType()
$d = $b + $a
$d
$d.GetType()
<#
Strings
Expandable strings " "
Literal strings ' '
Escape character `
#>
"The value of $a is $a"
'The value of $a is $a'
"The value of `$a is $a"