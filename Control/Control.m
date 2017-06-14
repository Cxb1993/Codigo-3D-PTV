dirimagenes='C:\Users\garba\Desktop\14-06-17\';
dirparametros= 'C:\Users\garba\Desktop\Downloads\';
dircodigos=cd;


for camara = 1:2
    cd([dirimagenes, '\Puntos', num2str(camara)])
    puntos = dir([dirimagenes, '\Puntos', num2str(camara),'\*C',num2str(camara),'S0001.tif.csv']);
    Npuntos=length(puntos);

    for ii=1:Npuntos
        B                 = dlmread(puntos(ii).name,';',1,0); %Cargo las imagenes en comun
        Wi(:,:,ii,camara) = [B'; ones(1,size(B,1))];
    end
end
cd(dirparametros)
load('Parámetros Montaje Completo')
cd(dircodigos)
cd ..
cd('Simulación')

lado=25.4;
n=9;
m=6;
[y, x] = meshgrid(1:m,1:n);
     H = lado*[x(:)'-round(n/2);y(:)'-round(m/2)]; % X,Y,Z en columna vertical, cada columna es una partícula
     H = [H; zeros(1,size(H,2))];

errores=[];
errorplano=[];
for ii=1:Npuntos
    inter=[];
    
    for jj=1:size(Wi,2)

    [ vw, error ] = triangular2( R, T, A, sx, sy, Wi(1,jj,ii,1), Wi(2,jj,ii,1), Wi(1,jj,ii,2), Wi(2,jj,ii,2)  );
    inter=[inter, vw];
    end
    
    X=reshape(inter(1,:),9,6)';
    Y=reshape(inter(2,:),9,6)';
    Z=reshape(inter(3,:),9,6)';
    [f, G] = fit( [inter(1,:)', inter(2,:)'], inter(3,:)', 'poly11' );
    seta = f(X,Y);
    errorplano2 = sum(([X(:)'; Y(:)'; Z(:)']-[X(:)'; Y(:)'; seta(:)']).^2);
    errorplano= [errorplano; G.sse];
    sqrt(G.sse)/54
    
    figure
    scatter3(inter(1,:), inter(2,:),inter(3,:), 'ro ')
    hold on
    surf(X,Y,f(X, Y))
    daspect([1,1,1])

    errores(:,ii)=(((sum((inter-inter(:,23)).^2)).^0.5)'-((sum((H-H(:,23)).^2)).^0.5)');%./(((sum((H-H(:,1)).^2)).^0.5)');*100
    figure
    hist(errores(:,ii)) %Grafico un histograma de sus errores, este está desplazado por el error del punto 0

end
figure
hist(errorplano2)
cd ..
cd('Control')