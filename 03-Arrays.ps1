#Arrays
 #Arrays
#Assign multiple values to a variable
 $a=2,42,5,7,13
#Can assign with a range operator
 $a=1..10
#By default, array data type is object
 $a.GetType()
#Because of this, you can store multiple data types in an array
 $a = 3,'Foo'
#Access array elements using zero index
 $a[0]
#Access array elements using range operator
 $a[4..7]
#Negative numbers start from end of array, -1 is last element
 $a[-1]
#Negative number range, use index ascending order
 $a[-4..-1]
#Change the value of an array element
 $a[3]=99
 $a.SetValue(10,3)
#Add element using += (creates new array, performance)
 $a+=127
#Get the number of elements in an array
 $a.length