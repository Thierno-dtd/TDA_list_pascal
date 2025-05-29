program AfficherInverseListe;

uses listePointeur;  

var
  i, value, taille: integer;
  L: liste;

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