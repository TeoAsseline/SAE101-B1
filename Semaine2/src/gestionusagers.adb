
with Type_Usager; use Type_Usager;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Gestionusagers is
   fichier: File_type;
begin

   getUsager(usager);
   putUsager(usager);
   new_line;

   usager1.Num_ID := 144;
   usager1.Username := "arthur         ";
   usager1.BornYear := 2003;
   usager1.Level := 4365;

   testage(usager1);
   testaffectation(usager1,usager2);
   testegalite(usager1,usager2);
   testcomparaison(usager1,usager2);
   testlevel(usager1);

   --ajout dans un fichier texte d'un usager
   Create (fichier, name => "docusager.txt");
   put(fichier, "identifiant : "); put(fichier, usager.Num_ID);
   New_Line(fichier);
   put(fichier, "Nom : "); put(fichier, usager.Username);
   New_Line(fichier);
   put(fichier, "Année de naissance : "); put(fichier, usager.BornYear);
   New_Line(fichier);
   put(fichier, "Niveau : "); put(fichier, usager.Level);
   New_Line(fichier);
   Close(fichier);

end Gestionusagers;
