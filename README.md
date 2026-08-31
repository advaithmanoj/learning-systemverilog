# SystemVerilog Concepts

A collection of SystemVerilog programs I developed in edaplayground to learn SV concepts and testbench architecture.

## Object Oriented Programming in SystemVerilog
1. [Shallow Copy](https://edaplayground.com/x/UhGN) <br>
   Built in copy method. Creates a new object and copies all properties from orginal object. But if the orginal object contains a nested object only its handle will    be copied. Therefore both objects will have handles pointing to the same nested object.
2. [Deep Copy](https://edaplayground.com/x/kucx) <br>
   User defined copy method. Creates a new object and copies all properties from orginal object.The nested objects are also created in the copied object. Thereby both objects will have its own copy of nested object.
3. [Data_Encapsulation & Hiding](https://edaplayground.com/x/J8_Q) <br>
   Restricting access of properties from outside the class scope using local keyword.Properties with protected keyword can be accessed from defined class and its's child class but not from outside.
4. [Inheritance](https://edaplayground.com/x/gzML) <br>
   SV concept that allows child class to access,override parent class methods and properties, is called Inheritance.
4. [Polymorphism](https://edaplayground.com/x/fjP2) <br>
   SV concept that allows parent class handle to access methods of child. <br>
To be continued


