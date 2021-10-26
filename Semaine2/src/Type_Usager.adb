
with Type_Usager;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


package body Type_Usager is

   --sous programme qui permet d entrer un usager
   procedure getUsager (u : out Type_Usager) is

   begin

      put_line("Quel est le numero d'adherent de l'usager ? ");
      get(u.Num_ID); new_line;
      put_line("Quel est le nom de l'usager ? ");
      get(u.Username(1..10)); new_line;
      put_line("Quel est l'annee de naissance de l'usager ? ");
      get(u.BornYear); new_line;
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
      put_line(u.Username); new_line;
      put_line("Son annee de naissance est 1968: ");
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
       put_line("Vous etes maintenant niveau ");
       put(u.Level);
   end LevelUp;

end Type_Usager;
