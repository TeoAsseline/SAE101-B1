with Type_Usager; use Type_Usager;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Gestionusagers is


begin

   getUsager(usager1);
   putUsager(usager1);

   --test de age
   new_line;
   usager1.Num_ID := 144;
   usager1.Username := "arthur    ";
   usager1.BornYear := 2003;
   usager1.Level := 4365;

   if getAge(usager1) = 18 then
      put_line("Sous-programme maximum est ok ");
   else
      put_line("Sous-programme maximum est ko ");
   end if;

   --test de affectation
   new_line;
   usagerTest.Num_ID := 144;
   usagertest.Username := "arthur    ";
   usagertest.BornYear := 2003;
   usagertest.Level := 4365;

   Affectation(usager1, usager2);
   if usager2 = usagertest then
      put_line("Sous-programme maximum est ok ");
   else
      put_line("Sous-programme maximum est ko ");
   end if;

   --test de egalite
   new_line;
   if Egalite(usager1, usager2) = true then
	put_line("Sous-programme maximum est ok ");
   else
      put_line("Sous-programme maximum est ko ");
   end if;

   --test de identity compare
   new_line;
   if IdentityCompare(usager1, usager2) = true then
      put_line("Sous-programme maximum est ok ");
   else
      put_line("Sous-programme maximum est ko ");
   end if;


   --test de comparaison
   new_line;
   if Comparaison(usager1, usager2) = false then
      put_line("Sous-programme maximum est ok ");
   else
      put_line("Sous-programme maximum est ko ");
   end if;

   usager1.Num_ID := 100;

   if Comparaison(usager1, usager2) = true then
      put_line("Sous-programme maximum est ok ");
   else
      put_line("Sous-programme maximum est ko ");
   end if;

   usager1.Num_ID := 200;


   if Comparaison(usager1, usager2) = false then
      put_line("Sous-programme maximum est ok ");
   else
      put_line("Sous-programme maximum est ko ");
   end if;

   --test de level up

   LevelUp (usager1);
   new_line;
   if usager1.Level = 4366 then
      put_line("Sous-programme maximum est ok ");
   else
      put_line("Sous-programme maximum est ko ");
   end if;


end Gestionusagers;
