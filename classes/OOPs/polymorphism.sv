//Polymorphism- means many forms
//Using a single parent class handle, we can access different overridden methods of child class objects.


class Animal;
  //virtual function - A virtual function is a function that allows runtime polymorphism
  //It lets the program decide which version of a function to execute based on the actual object, not the type of the handle (reference).
  virtual function void speak();    
    $display("Animal makes some sound"); 
  endfunction

endclass

class Dog extends Animal;

  function void speak();
    $display("Dog says: Bark");
  endfunction

endclass


//---------------- Cat ----------------//
class Cat extends Animal;

  function void speak();
    $display("Cat says: Meow");
  endfunction

endclass


//---------------- Cow ----------------//
class Cow extends Animal;

  function void speak();
    $display("Cow says: Moo");
  endfunction

endclass


//---------------- Testbench ----------------//
module tb;

  Animal a;          // Base class handle
  Dog d;             // Dog handle
  Cat c;             // Cat handle
  Cow cw;            // Cow handle

  initial begin

    // Create Dog object
    d = new();
    a = d;
    a.speak();

    // Create Cat object
    c = new();
    a = c;
    a.speak();

    // Create Cow object
    cw = new();
    a = cw;
    a.speak();

  end

endmodule
