unit afficheListe;

interface

uses
  listeTableau, listePointeur;

procedure afficherListe(L: listeTableau.liste); overload;
procedure afficherListe(L: listePointeur.liste); overload;
procedure afficherInverseList(L: liste);

implementation

procedure afficherListe(L: listeTableau.liste); overload;
var
  i: integer;
begin
  if L.taille = 0 then
    writeln('Liste tableau vide.')
  else
    for i := 1 to L.taille do
      writeln('l‚ment [Tableau] ', i, ' : ', L.elements[i]);
end;

procedure afficherListe(L: listePointeur.liste); overload;
var
  p: listePointeur.liste;
  i: integer;
begin
  if L = nil then
    writeln('Liste chaŒn‚e vide.')
  else
  begin
    i := 1;
    p := L;
    while p <> nil do
    begin
      writeln('l‚ment [Pointeur] ', i, ' : ', p^.val);
      p := p^.suivant;
      i := i + 1;
    end;
  end;
end;
 
procedure afficherInverseList(L: liste);
var
            i, value, taille: integer;
  
begin
            vide(L); 
            i := 1;
            readln(value);

            while (value > 0) do
            begin 
                        inserer(L, i, value);
                        i := i + 1;
                        readln(value);
            end;

            taille := longueur(L);
            for i := taille downto 1 do
            writeln(ieme(L, i));
end;

end.



(*program AfficherIverseList;

        var
                i, calue, taille: integer;
                L:liste;
        begin
                i := 1;
                readln(value)
                while(value > 0 ) do
                        begin 
                                inserer(L,i,value);
                                i := i+1:
                                readln(value);
                        end;
                taille := Longueur(L);
                for i := taille downto 1 do
                        writeln(ieme(L,i));
                    end;
  *)