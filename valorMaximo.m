function indiceMaximo = valorMaximo(array)
    MAX = max(array);
    indiceMaximo = find(array == MAX);
    indiceMaximo = indiceMaximo(1);
end