
with Type_Usager;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body Type_Usager is

   --sous programme qui permet d entrer un usager
   procedure getUsager (u : out Type_Usager) is


   begin

      put_line("Quel est le numero d'adherent de l'usager ? ");
      get(u.Num_ID);
      put_line("Quel est le nom de l'usager ? ");
      get(u.Username(1..15));
      put_line("Quel est l'annee de naissance de l'usager ? ");
      get(u.BornYear);
      put_line("Quel est le niveau de l'usager ? ");
      get(u.Level);

   end getUsager;

   --sous programme qui permet d afficher un usager
   procedure putUsager (u : in Type_Usager) is

   begin

      new_line;
      put_line("le numéro d'adherent de l'usager est: ");
      put(u.Num_ID); new_line;
      put_line("Son nom est: ");
      put_line(u.Username);
      put_line("Son annee de naissance est: ");
      put(u.BornYear); new_line;
      put_line("Son niveau est: ");
      put(u.Level);

   end putUsager;

   --sous programme qui permet de calculer l age
   function getAge (u : in Type_Usager) return Integer is

      age: Integer;

   begin

      age:= (2021-(u.BornYear));
      return age;

   end getAge;

   --sous programme qui permet d affecter des usagers
   procedure Affectation (u : in Type_Usager ; e : out Type_Usager) is

   begin

      e.Num_ID := u.Num_ID;
      e.Username := u.Username;
      e.BornYear := u.BornYear;
      e.Level := u.Level;

   end Affectation;

   --sous programme qui permet de savoir si ils sont egaux
   function Egalite (u1 : in Type_Usager ; u2 : in Type_Usager) return Boolean is

   begin

      if (u1.Username=u2.Username) and (u1.BornYear=u2.BornYear) and (u1.Level=u2.Level) then
         return true;
      else
         return false;
      end if;

   end Egalite;

   --sous programme qui compare les identités
   function IdentityCompare (u1 : in Type_Usager ; u2 : in Type_Usager) return Boolean is

   begin

      if (Egalite(u1,u2)= true) and (u1.Num_ID = u2.Num_ID) then
         return true;
      else
         return false;
      end if;

   end IdentityCompare;

   --sous programme qui compare
   function Comparaison (u1 : in Type_Usager ; u2 : in Type_Usager) return Boolean is

   begin

      if u1.Num_ID < u2.Num_ID then
         return true;
      else
         return false;
      end if;

   end Comparaison;

   --sous programme qui monte un niveau
   procedure LevelUp (u : in out Type_Usager) is

   begin

       u.Level := u.Level + 1;
       put("Bravo, vous avez gagne un niveau !");
       put("Vous etes maintenant niveau ");
       put(u.Level);

   end LevelUp;

   --test de age
   procedure testage (u1:in Type_Usager) is

   begin

      new_line;
      if getAge(u1) = 18 then
         put_line("Sous-programme age est ok ");
      else
         put_line("Sous-programme age est ko ");
      end if;

   end testage;

   --test de affectation
   procedure testaffectation (u1:in Type_Usager; u2: out Type_Usager) is

      usagerTest: Type_Usager;

   begin

      new_line;
      usagerTest.Num_ID := 144;
      usagertest.Username := "arthur         ";
      usagertest.BornYear := 2003;
      usagertest.Level := 4365;

      Affectation(u1, u2);
      if u2 = usagertest then
         put_line("Sous-programme affectation est ok ");
      else
         put_line("Sous-programme affectation est ko ");
      end if;

   end testaffectation;

   --test de egalite
   procedure testegalite (u1:in Type_Usager; u2:in Type_Usager) is

   begin

      new_line;
      if Egalite(u1, u2) = true then
         put_line("Sous-programme egalite est ok ");
      else
         put_line("Sous-programme egalite est ko ");
      end if;

   end testegalite;

   --test de identity compare
   procedure testidentity (u1:in Type_Usager; u2:in Type_Usager) is

   begin

      new_line;
      if IdentityCompare(u1, u2) = true then
         put_line("Sous-programme identity est ok ");
      else
         put_line("Sous-programme identity est ko ");
      end if;

   end testidentity;


   --test de comparaison
   procedure testcomparaison (u1:in Type_Usager; u2:in Type_Usager) is

      u:Type_Usager;

   begin

      new_line;
      if Comparaison(u1, u2) = false then
         put_line("Sous-programme comparaison est ok ");
      else
         put_line("Sous-programme comparaison est ko ");
      end if;

      u.Num_ID := 100;

      new_line;
      if Comparaison(u, u2) = true then
         put_line("Sous-programme comparaison est ok ");
      else
         put_line("Sous-programme comparaison est ko ");
      end if;

      u.Num_ID := 200;

      new_line;
      if Comparaison(u, u2) = false then
         put_line("Sous-programme comparaison est ok ");
      else
         put_line("Sous-programme comparaison est ko ");
      end if;

   end testcomparaison;

   --test de level up
   procedure testlevel (u1:in out Type_Usager) is

   begin

      new_line;
      LevelUp (u1);
      new_line;
      new_line;
      if u1.Level = 4366 then
         put_line("Sous-programme level est ok ");
      else
         put_line("Sous-programme level est ko ");
      end if;
      new_line;

   end testlevel;

end Type_Usager;
