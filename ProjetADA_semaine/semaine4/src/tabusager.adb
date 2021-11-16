with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with usager; use usager;

package body tabusager is

   -----------------
   -- lireUsagers --
   -----------------

   procedure lire_Usagers (tab : out Type_App; n : out Integer) is

      finDeSaisie : Integer := 0;
      -- uniquement pour la version 2 (question 4.d)
      usager : Type_Usager ;

   begin
      n:=1;
      tab.nb_User:=1;
      -- saisie des usagers et insertion dans le tableau
      Put ("Saississez votre premier usager");

      while finDeSaisie /= 1 loop
         --if i > TAILLE_MAX then
         --   raise SAISIE_ERRONNEE;
         --end if;
         --lire_usager (tab (i));
         -- Version 2 (question 4.d) remplace les 4 lignes précédentes
         getUsager(usager);
         ajouter_Usager(tab, n, usager);
         -- fin de saisie ?
         Put_Line
           ("Voulez-vous saisir un nouvel usager (Taper 1 pour arreter et 2 pour continuer) ? ");
         Get (finDeSaisie);
         n:=n+1;
      end loop;
      n := n - 1;
   end lire_Usagers;

   -------------------
   -- ecrireUsagers --
   -------------------

   procedure ecrire_Usagers (tab : in Type_App; n : in Integer) is

      i : Integer;

   begin
       -- vérification de la validité de n
      if n < 1 or n > TAILLE_MAX then
         raise DEBORDEMENT;
      end if;
      -- écriture des éléments du tableau
      New_Line;
      Put_Line ("Les usagers sont :");
      i := 1;
      while i <= n loop
         putUsager(tab.Tab_User(i));
         i := i + 1;
      end loop;
   end ecrire_Usagers;

   ----------------------------------
   -- rechercher_Usager_Par_Numéro --
   ----------------------------------

   procedure recherche_Usager_Par_Numero
     (tab    : in     Type_App;
      n      : in     Integer;
      na     : in     Integer;
      trouve :    out Boolean;
      i      :    out Integer)
   is

   begin
      -- vérification de la validité de n
      if n < 1 or n > TAILLE_MAX then
         raise DEBORDEMENT;
      end if;
      -- parcours du tableau
      i := 1;
      while i <= n and tab.Tab_User(i).numero_adherent /= na loop
         i := i + 1;
      end loop;
      -- détermination du résultat de la recherche
      if i <= n then
         trouve := True;
      else
         trouve := False;
      end if;
   end recherche_Usager_Par_Numero;

   --------------------
   -- ajouter_Usager --
   --------------------
   procedure ajouter_Usager
     (tab    : in out Type_App;
      n      : in out Integer;
      usager : in     Type_Usager)
   is

   begin

      if n>TAILLE_MAX then
         raise DEBORDEMENT;
      end if;
      tab.Tab_User(n):=usager;
      tab.nb_User:=tab.nb_User+1;
   end ajouter_Usager;

   ----------------------
   -- supprimer_Usager --
   ----------------------
   procedure supprimer_usager
     (tab  : in out Type_App;
      n    : in out Integer;
      rang : in     Integer)
   is
      i : Integer;
   begin
       -- vérification de la validité de n
      if n < 1 or n > TAILLE_MAX then
         raise DEBORDEMENT;
      end if;
      -- vérification de la validité de rang
      if rang < 1 or rang >= TAILLE_MAX then
         raise VIDE;
      end if;
      -- supression de l'usager dans le tableau
      i := rang;
      while i < n loop
         tab.Tab_User(i) := tab.Tab_User (i + 1);
         i       := i + 1;
      end loop;
      n := n - 1;
   end supprimer_usager;

end tabusager;
