function grafico = gerarGrafico(imagemBinarizada)

for c=1:size(imagemBinarizada,2)
   soma = 0;
    for l=1:size(imagemBinarizada,1)
        if(imagemBinarizada(l,c) == 1)
            soma = soma + 1;
        end
    end
    grafico(c) = soma;
end
end