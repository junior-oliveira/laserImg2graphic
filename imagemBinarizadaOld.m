function imagemBinarizada = imagemBinarizadaOld(imagem, limiar)
    %imagem em tons de cinza
    imgTonsCinza = imagem(:,:,2);
    imagemBinarizada = zeros(size(imgTonsCinza,1), size(imgTonsCinza,2));
    for l=1:size(imgTonsCinza,1)
        for c=1:size(imgTonsCinza,2)
            if(imgTonsCinza(l,c) >limiar)
                imagemBinarizada(l, c) = 0;
            else
                imagemBinarizada(l, c) = 255; 
            end
        end
    end
end