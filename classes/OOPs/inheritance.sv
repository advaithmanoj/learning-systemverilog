//Inheritance feature allow the child class to inherit properties and methods of the parent class.
//The child class can have its own new properties and methods, along with access to the properties and methods of parent class.
//Allows reusability


class parent_class;  ///
  bit [31:0] addr;
endclass

class child_class extends parent_class;   //extends key word is used to inherit from parent class
  bit [31:0] data;                        // class <child_class_name> extends <parent_class_name>;
endclass

module inheritence;
  initial begin
    child_class c = new();
    c.addr = 10;
    c.data = 20;
    $display("Value of addr = %0d data = %0d",c.addr,c.data);
  end
endmodule
