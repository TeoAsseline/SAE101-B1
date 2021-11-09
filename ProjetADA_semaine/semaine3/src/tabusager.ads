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

   procedure find(user: in Type_App ; x:in Type_Usager; trouve:out Boolean; rang:out Integer);  --sous-programme qui permet de trouver un usager dans le tableau

   procedure addLast(new_user: in type_Usager; user:in out Type_App);

   procedure remove (user: in out Type_App; ID: in Integer);

   procedure sort (user: in out Type_App);

end tabusager;
