simple Txc1
{
    gates:
        input in;
        output out;
}

//
// Two instances (tic and toc) of Txc1 connected both ways.
// Tic and toc will pass messages to one another.
//
network Tictoc1
{
    @display("bgb=373,304");
    submodules:
        tic: Txc1 {
            @display("p=89,218");
        }
        //tec: Txc1 {
        //    @display("p=279,218");
        //}
        toc: Txc1 {
            @display("p=180,56");
        }
    connections:
        //tic.out --> {  delay = 100ms; } --> tec.in;
        //tec.out --> {  delay = 100ms; } --> toc.in;
        //toc.out --> {  delay = 100ms; } --> tic.in;

        //tec.in <-- {  delay = 100ms; } <-- tic.out;
        //toc.in <-- {  delay = 100ms; } <-- tec.out;
        //tic.in <-- {  delay = 100ms; } <-- toc.out;
        
        //original code
        tic.out --> {  delay = 100ms; } --> toc.in;
        tic.in <-- {  delay = 100ms; } <-- toc.out;

}


