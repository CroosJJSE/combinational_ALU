# combinational_ALU
lets build a combinational parameterized ALU

this is the ALU we are going to implement

![image](https://github.com/CroosJJSE/combinational_ALU/assets/141708783/64353af0-0417-4a2b-a8bc-96cec41679eb)

this is the output wave form

![image](https://github.com/CroosJJSE/combinational_ALU/assets/141708783/6e63e9d7-94da-4055-9b7c-4d6e7f9b4ceb)


it is parameterized

![image](https://github.com/CroosJJSE/combinational_ALU/assets/141708783/2d95e547-5937-407d-8ab9-0b9443c0db37)

i have followed these order of test bench writing
1. module defnition without port.
2. timescale
3. parameter
4. dut port declare
5. module instantiation with parameter
6. call the randoming function
7. intantiate random objects
8. initiualize testing
9. creat dump waveform file
10. (repeat in testing while changine the random values.)
