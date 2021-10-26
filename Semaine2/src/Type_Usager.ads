
package Type_Usager is

   --En tete du type Type_Usager
   type Type_Usager is record
      Num_ID : Integer;
      Username : String(1..10);
      BornYear : Integer;
      Level : Integer;
	end record;

   usager1: Type_Usager;
   usager2: Type_Usager;
   usagertest: Type_Usager;

   --entrer un usager
   procedure getUsager (u : out Type_Usager);

   --afficher un usager
   procedure putUsager (u : in Type_Usager);

   --calculer l age
   function getAge (u : in Type_Usager) return Integer;

   --copier les valeurs dun utilisateur a un autre
   procedure Affectation (u : in Type_Usager ; e : out Type_Usager);

   --egaliter valeurs utilisateurs
   function Egalite (u1 : in Type_Usager ; u2 : in Type_Usager) return Boolean;

   --comparer identité
   function IdentityCompare (u1 : in Type_Usager ; u2 : in Type_Usager) return Boolean;

   --comparer
   function Comparaison (u1 : in Type_Usager ; u2 : in Type_Usager) return Boolean;

   --LevelUp
   procedure LevelUp (u : in out Type_Usager);

end Type_Usager;


