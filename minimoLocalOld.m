function indiceMin = minimoLocalOld(grafico, indiceMaximo)
    cont_zeros = 0;
    inc = false;
    cont_inc = 0;
    dec = true;
    cont_dec = 0;
    for i=indiceMaximo:size(grafico,2)
        if(grafico(i) == 0)
            cont_zeros = cont_zeros + 1;
            while(grafico(i) == 0)
                cont_zeros = cont_zeros + 1;
                i = i+1;
            end
            
            indiceMin = i + fix(cont_zeros/2);  
            break;
        end
    end
end

% contagem consecutiva de incrementos foi eficaz mas tem problemas com o
% caso de gráfico com muita variação

function indiceMin = minimoLocal(grafico, indiceMaximo)
    cont_zeros = 0;
    inc = 1;
    cont_inc = 0;
    cont_dec = 0;
    for i=indiceMaximo:size(grafico,2)-1
        if((grafico(i) <= grafico(i + 1)) && grafico(i) < 35)
            % incrementa apenas se a função incrementou na última iteração
            if(inc == 1)
                cont_inc = cont_inc + 1;
            else
                cont_inc = 0;
            end
            
            % indica que a função está agora incrementando
            inc = 1;
        else
            % decrementapenas se for
            cont_dec = cont_dec + 1;   
            inc = -1;
        end
       
        if(cont_inc >5)
            indiceMin = i - 6;
            break;
        end
        
    end
    %display(['indice mínimo' int2str(indiceMin)]);
    
end