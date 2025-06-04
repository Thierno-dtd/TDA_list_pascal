unit operationOccurence;

interface

//uses listeTableau;
uses listePointeur;

type
            T = integer;

procedure creerListe(var L: liste);
function occurence(L: liste; entier: T): integer;
procedure supprimerOccurence(var L: liste; entier: T);
procedure concatenerDeuxListes(L1, L2: liste; var Lres: liste);

implementation

procedure creerListe(var L: liste);
var
            val: T;
            i: integer;
begin
            vide(L);
            i := 1;
            writeln('Entrez les elements (<= 0 pour arreter) :');
            readln(val);
            while val > 0 do
            begin
                        inserer(L, i, val);
                        i := i + 1;
                        readln(val);
            end;
end;

function occurence (L: liste; entier: integer) : integer;
var
            i, count, taille : integer;
begin
            taille := longueur(L);
            i := 1;
            count :=  0;
            while i<= taille do
            begin
                        if ieme(L, i) = entier then count:= count +1;
                        i := i+1;
            end;
            occurence:=count;
end;

procedure supprimerOccurence (var L: liste; entier: integer) ;
var
            i,taille: integer;
begin
            i := 1;
            taille := longueur(L);
            while i <= taille do
            begin
                        if ieme(L,i)= entier then  
                        begin
                                    supprimer(L, i) ;
                                    taille := taille - 1;
                        end
                        else i := i + 1;
            end;
end;

procedure concatenerDeuxListes(L1, L2: liste; var Lres: liste);
var
            i, taille1, taille2: integer;
            val: T;
begin
            vide(Lres);
            taille1 := longueur(L1);
            taille2 := longueur(L2);

            for i := 1 to taille1 do   inserer(Lres, i, ieme(L1, i));

            for i := 1 to taille2 do  inserer(Lres, longueur(Lres) + 1, ieme(L2, i));
end;

end.