function indiceMin = minimoLocal(grafico, indiceMaximo)
    intensidadeLuz = 50;
    tamIntervaloX = 20;
    proporcaoIncDec = 0.75;
    cont_inc = 0;
    cont_dec = 0;
    inc = -1;
    cont_decremento_total = 0;
    menor = grafico(indiceMaximo);
    for i=indiceMaximo:size(grafico,2)-1
        
        if((grafico(i) <= grafico(i + 1)) && grafico(i) < intensidadeLuz)
            if(cont_inc == 0)
                cont_dec = 0;
                cont_decremento_total = 0;
            end
            inc = 1;
            cont_inc = cont_inc + 1;            
        else
            if(inc == -1)
                cont_dec = cont_dec + 1;
            end
            cont_decremento_total = cont_decremento_total + 1;
            inc = -1;
                        
        end
        if(cont_dec >= 3)
            cont_inc = 0;
            cont_dec = 0;
            cont_decremento_total = 0;
        end
        if(cont_inc >= tamIntervaloX && (cont_inc - cont_decremento_total) > tamIntervaloX*proporcaoIncDec)
            for j = i - cont_inc:i + cont_inc
                if(grafico(j) < menor)
                    menor = grafico(j);
                    indiceMin = j;
                end
            end
            break;
        elseif(cont_inc >= tamIntervaloX)
            cont_inc = 0;
            cont_dec = 0;
            cont_decremento_total = 0;
        end
        
    end
    %display(['indice mínimo' int2str(indiceMin)]);
    
end