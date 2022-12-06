% Tinta Merah Putih.

% Silsilah Keluarga.

% Fakta.

orangtua(tono,lia). % tono adalah orangtua lia

orangtua(tini,lia).

orangtua(tono,haris).

orangtua(tini,haris).

orangtua(dani,dila).

orangtua(lia,dila).

orangtua(dani,danil).

orangtua(lia,danil).

orangtua(haris,aldo).

orangtua(ina,aldo).

orangtua(haris,hana).

orangtua(ina,hana).

pria(tono). % tono adalah pria

pria(dani).

pria(haris).

pria(danil).

pria(aldo).

wanita(tini).

wanita(lia).

wanita(ina).

wanita(dila).

wanita(hana).

%aturan

ayah(X,Y):- orangtua(X,Y),pria(X).

ibu(X,Y):- orangtua(X,Y),wanita(X).

%aturan dila-tono

kakek1(Kakek,Cucu):- ayah(Kakek,Anak),ibu(Anak,Cucu). 

%aturan aldo-tono

kakek2(Kakek,Cucu):- ayah(Kakek,Anak),ayah(Anak,Cucu).

%aturan All_cucu

kakek(Kakek,Cucu):- ayah(Kakek,Anak),ibu(Anak,Cucu); ayah(Kakek,Anak),ayah(Anak,Cucu).

kakek_(Kakek,Cucu):- kakek1(Kakek,Cucu);kakek2(Kakek,Cucu).