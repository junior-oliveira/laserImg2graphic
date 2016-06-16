function mostrarImagem(imagem)
    RI = imref2d(size(imagem));
    RI.XWorldLimits = [0 22];
    RI.YWorldLimits = [0 22];
    imshow(imagem,RI);
end