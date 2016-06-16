function amostras = principal()
		%Caminho para a pasta com os arquivos de imagens dos padr�es luminosos
    BASE_DADOS =     'C:\Users\Junior\Desktop\imagens_laser\Terceiro_dia';
    nomes_imagens = ls(BASE_DADOS);
    contador = 1;
    %display(size(nomes_imagens,1))
    for i = 3:size(nomes_imagens,1)
        %display( ['imagem ' num2str(i)]);
       
        try
            im = imread([BASE_DADOS, '\', nomes_imagens(i,:)]);
            %binariza��o da imagem
            imagemBinarizada = binarizarImagem(im, .22);
            
            %gera o gr�fico
            amostras{contador}.grafico = gerarGrafico(imagemBinarizada);
            
            %valor m�ximo do gr�fico
            amostras{contador}.maxIndice = valorMaximo(amostras{contador}.grafico);
            
            %m�nimo local do gr�fico
            amostras{contador}.minIndice = minimoLocalOld(amostras{contador}.grafico, amostras{contador}.maxIndice);
            
            
            %imagem binarizada
            amostras{contador}.imagemBinarizada = imagemBinarizada;
            
            %imagem em tons de cinza
            amostras{contador}.imagemTonsCinza = im(:,:,1);
            
            amostras{contador}.img = im;
            
            %distancia 
            amostras{contador}.distancia = 2*((amostras{contador}.minIndice - amostras{contador}.maxIndice)*22/4288);
            %display(['indice m�nimo imagem ' num2str(nomes_imagens(i,:)) ' = ' int2str(amostras{contador}.minIndice)]);
            display(['Dist�ncia entre os m�nimos para a imagem ' num2str(nomes_imagens(i,:)) ' = ' num2str(amostras{contador}.distancia) 'cm']);
            contador = contador + 1;
            
        catch e
            
        end
        
    end
    
end
