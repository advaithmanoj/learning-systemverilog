//if u copy using deepcopy from one object to another object,not only variables,methods of the prev object gets copied to the new one.
//This copies all the class members of its nested class members to the new one
//Deep copy copies all class members and its nested class memebers 
//this copy creates an fully independent duplicate 
class hdr;
  int id=0;
endclass

class packet;
  int data;
  int addr;
  hdr h1;//h1 is a new handle for hdr class
  
  function  new(int data,int addr);  //custom new function
    h1=new(); //h1 object created
    this.data = data;
    this.addr = addr;
  endfunction
  
  //deepcopy method
  function void copy(packet p);//custom func with void return,need arg handle p
    this.data = p.data;
    this.addr = p.addr;
    this.h1.id = p.h1.id;
  endfunction
  
  function void display(string  name);
    $display("------------------------------");
    $display("[%s] data = %d \t addr = %d\t id inside = %d",name,data,addr,h1.id);
  endfunction
endclass

module tb;
  packet p1,p2; //2 handles
  
  initial begin
    p1=new(1234,5678);
    p1.display("p1");
    
    p2=new(1,2);
    p2.copy(p1);
    p2.display("p2");
    
    $display("changing p1 contents");
    p1.addr   = '1;
    p1.data   = '0;
    p1.h1.id = 17;
    p1.display("p1");
    
    $display(" p2 contents should be independent");
    p2.display("p2");
  end
  
endmodule
