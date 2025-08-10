import Microsoft.Quantum.Diagnostics.*;
import Microsoft.Quantum.Math.*;
import Microsoft.Quantum.Arrays.*;

operation Fourier() : Unit {

    use qs = Qubit[3];

    Message("Initial state |000>:");
    DumpMachine();


    H(qs[0]);
    Controlled R1([qs[1]], (PI()/2.0, qs[0]));
    Controlled R1([qs[2]], (PI()/4.0, qs[0]));

    H(qs[1]);
    Controlled R1([qs[2]], (PI()/2.0, qs[1]));

    H(qs[2]);

    SWAP(qs[2], qs[0]);

    Message("After:");
    DumpMachine();

    ResetAll(qs); 

}