class random_sel;   // creating classes only in tb
rand bit [2:0] num;
constraint c { num inside {[0:4]};}
function new();
    this.num=3'd4; // overinding the constructor
    
endfunction
 endclass
 class random_num #(WIDTH=8);
 rand bit signed [WIDTH-1:0] num;
  endclass



module alu_tb ();                               //1.no ports
timeunit 1ns/1ps;                               //2.timescale
localparam WIDTH =8 ;                              //3.parameter
logic signed [WIDTH-1:0] bus_a,bus_b,alu_out;       //4.port declare
logic  signed [2:0] alu_sel;
logic signed zero,negative;

alu #(.WIDTH(WIDTH)) dut(.*);    //5.module intansiate
 
random_num #(.WIDTH(WIDTH)) A_r = new(), B_r=new(); //6.call the randoming function
random_sel sel_r=new();                               //7.intantiate random objects

initial begin                                          //8.initial
    $dumpfile("dumpfile.vcd");                          //9.create dump wave file.
    $dumpvars(0,dut);
    repeat(5) begin                            // repeating testing
        #10 bus_a=A_r.num; bus_b = B_r.num ; alu_sel= sel_r.num;
        A_r.randomize();                        // changing the random values.
        B_r.randomize();
    
    end
    

    #30 bus_a <= 8'd5;  bus_b <=  8'd10; alu_sel <= 3'b000;
    #10 bus_a <= 8'd30; bus_b <= -8'd10; alu_sel <= 3'b001;
    #10 bus_a <= 8'd5;  bus_b <=  8'd10; alu_sel <= 3'b010;
    #10 bus_a <= 8'd51; bus_b <=  8'd17; alu_sel <= 3'b011;
    $finish;

end    



endmodule