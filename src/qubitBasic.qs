namespace qubitBasic {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;

    operation superPosiciona() : Result {
        use q = Qubit(); // cria um qubit (estado inicial: ket0)
        H(q); // coloca em superposicao
        let bitClassico = M(q); // mede o valor dele (0 ou 1, com 50% de probabilidade)
        Reset(q); // reseta e descarta o qubit

        return bitClassico;
    }

    operation lendoValorPadrao() : Result {
        // lê o valor padrao que o qubit possui no momento de sua criação
        use q = Qubit();
        let bit = M(q);
        Reset(q);

        return bit;
    }

    operation lendoValorInvertido() : Result {
        use q = Qubit();

        X(q); // aplica a porta Pauli-X (ou NOT) no qubit

        let bit = M(q);
        Reset(q);

        return bit;
    }

}