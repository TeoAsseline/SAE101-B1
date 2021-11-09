-- bibliothËques d'entrÈes sorties
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
      while identityCompare(x,user.Tab_User(i)) = true loop
         i:=i+1;
      end loop;

      --fournir le r�sultat de la recherche

      if user.Tab_User(i) = x then     --�l�ment trouv�
         trouve:=True;
         rang:=i;
      else                 --�l�ment n'a pas �t� trouv�
         trouve:=False;
      end if;

   end find;

end tabusager;
