program MainTest;

uses
            listeTableau,
            operationOccurence;

var
            L1, L2, L3: liste;
            val, occ: integer;

begin
            writeln('Cr‚ation de la premiŠre liste :');
            creerListe(L1);  

            writeln('Cr‚ation de la deuxiŠme liste :');
            creerListe(L2);  
            writeln('Entrez la valeur dont vous voulez compter les occurrences dans L1 :');
            readln(val);
            occ := occurence(L1, val);
            writeln('Nombre d''occurrences de ', val, ' dans L1 : ', occ);

            writeln('Suppression de toutes les occurrences de ', val, ' dans L1.');
            supprimerOccurence(L1, val);
            writeln('Liste L1 aprŠs suppression :');
            //afficherListe(L1);

            writeln('Concat‚nation de L1 et L2 dans L3.');
            concatenerDeuxListes(L1, L2, L3);
            writeln('Contenu de la liste L3 :');
            //afficherListe(L3);
end.