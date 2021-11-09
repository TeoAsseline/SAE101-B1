-- biblioth√ãques d'entr√àes sorties
with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with usager;              use usager;

package body tabusager is

   ----------
   -- find --
   ----------

   procedure find(user: in Type_App ; x:in Type_Usager; trouve:out Boolean; rang:out Integer)
   is
      i: Integer; --index
   begin

      i:=1;
      while identityCompare(x,user.Tab_User(i)) = false and i<TAILLE_MAX loop
         i:=i+1;
      end loop;

      --fournir le rÈsultat de la recherche

      if identityCompare(x,user.Tab_User(i)) = true then     --ÈlÈment trouvÈ
         trouve:=True;
         rang:=i;
      else                 --ÈlÈment n'a pas ÈtÈ trouvÈ
         trouve:=False;
      end if;

   end find;

   --add last
   procedure addLast(new_user:in type_Usager; user:in out Type_App) is
      rang: Integer;
      trouve: Boolean;
      us: Type_Usager;
   begin
      user.nb_User:=user.nb_User+1;
      if user.nb_User>TAILLE_MAX then
         raise DEBORDEMENT;
      end if;
      find(user, new_user, trouve, rang);
      if trouve=true then
         raise SAME_ID;
      end if;
      affectation(new_user,us);
      affectation( user.Tab_User(user.nb_User),us);

   end addLast;

   --remove
   procedure remove (user: in out Type_App; ID: in Integer) is

	c:Integer;

   begin
      if user.nb_User=0 then
         raise VIDE;
      end if;
      if ID > user.nb_User then
         raise TOO_BIG_ID;
      end if;
      c:= 0;
      while c< user.nb_User-ID loop
         affectation(user.Tab_User(ID+1), user.Tab_User(ID));
         c:=c+1;
      end loop;
      user.nb_User:=user.nb_User-1;

   end remove;

   --sort
   procedure sort (user: in out Type_App) is

      memory: type_Usager;
      index: Integer;
      ordonne: Boolean;
      i2: Integer;
   begin
      if user.nb_User=0 then
         raise VIDE;
      end if;

      ordonne:= false;
      i2:=1;

      while ordonne = false and i2<TAILLE_MAX loop
         ordonne:= true;
         index:= 1;
         i2:=i2+1;
         while index+1 <= user.nb_User loop
            if user.Tab_User(index) < user.Tab_User(index+1) then
               index:= index+1;

            else

               affectation(user.Tab_User(index),memory);
               affectation(user.Tab_User(index+1),user.Tab_User(index));
               affectation(memory,user.Tab_User(index+1));
               ordonne := false;
               index:= index+1;
            end if;

         end loop;
      end loop;

   end sort;

end tabusager;
