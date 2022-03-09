namespace deutsch {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;

    operation testeFuncaoConstante() : Unit {
        AlgoritmoDeutsch(exemploConstante);
    }
    operation testeFuncaoBalanceada() : Unit {
        AlgoritmoDeutsch(exemploBalanceada);
    }

    operation setQubitValue(q : Qubit, valor : Result) : Unit {
        if(M(q) != valor){
            X(q); // inverte 
        }
    }

    operation exemploBalanceada(q : Qubit) : Unit {
        Z(q); // aplica a porta Pauli-Z no Qubit, ou seja inverte o valor dele para o eixo Z
    }

    operation exemploConstante(q : Qubit) : Unit {
        I(q); // aplica a porta identidade no qubit, ou seja não altera o valor dele
    }


    operation AlgoritmoDeutsch(oraculo : (Qubit => Unit)) : Unit {
        // aplicacao do algoritmo de Deutsch simplificado
        use q = Qubit();

        H(q);
        oraculo(q);
        H(q);

        let bitMedido = M(q);
        
        if(bitMedido == Zero){
            Message("A funcao é constante!");
        } else {
            Message("A funcao é balanceada!");
        }
        Reset(q);
    }
}

