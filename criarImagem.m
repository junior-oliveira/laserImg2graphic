img = imread('imagem_original.jpg');
imgs = img(:,:,1);

imagemNova =zeros(size(imgs,1), size(imgs,2));
for l=1:size(imgs,1)
    for c=1:size(imgs,2)
        if(imgs(l,c) >40)
            imagemNova(l, c) = 0;
        else
            imagemNova(l, c) = 255; 
        end
    end
end
for c=1:size(imgs,2)
    dados(c) = 0;
    for l=1:size(imgs,1)
        if(imagemNova(l,c) == 0)
            dados(c) = dados(c) + 1;
        end
    end
end
imagemNova = mat2gray(imagemNova);
%hist =imhist(imagemNova);
imshow(imagemNova), figure, plot(dados)