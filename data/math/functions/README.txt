Hi there, future me!

Here is how this works:

1) Anything in a folder marked "xxxxx_util" is a sub-function of xxxx and you will never
   run it unless you are running it from the master function xxxx. NEVER!
   
2) All constants go in the scoreboard m_constants

3) Before a function can be run, it needs to have its inputs defined. These go in the
   scoreboard m_io under the names INPUT1, INPUT2, INPUT3,...
   
   Most functions will output to m_io aswell under names OUTPUT1, OUTPUT2,...
   
   The step breakdown to run a function is as follows:
   
   a) initialize inputs
   b) call function
   c) save outputs
   d) clear output so you don't clutter m_io
   
4) Remember to include comments on input/output stuff in the functions so you
   understand what you're doing 6 months from now.