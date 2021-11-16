with usager;              use usager;

package tabusager is

   TAILLE_MAX : constant Integer := 100;

   type TabUser is array (1 .. TAILLE_MAX) of Type_Usager; --tableau contenant les usagers

   type Type_App is record --enregistrement contenant le tableau des usagers et le nombre d'usager
      Tab_User: TabUser;
      nb_User: Integer;
   end record;

   DEBORDEMENT : exception;
   SAME_ID : exception;
   VIDE : exception;
   TOO_BIG_ID : exception;

   procedure lire_Usagers (tab : out Type_App; n : out Integer);

   procedure ecrire_Usagers (tab : in Type_App; n : in Integer);

   procedure recherche_Usager_Par_Numero
     (tab    : in     Type_App;
      n      : in     Integer;
      na     : in     Integer;
      trouve :    out Boolean;
      i      :    out Integer);

   procedure ajouter_Usager (tab    : in out Type_App; n      : in out Integer;
      usager : in     Type_Usager);

   procedure supprimer_usager (tab  : in out Type_App; n    : in out Integer;
      rang : in     Integer);

end tabusager;
