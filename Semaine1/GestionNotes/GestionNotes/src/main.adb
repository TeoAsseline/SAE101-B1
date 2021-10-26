
with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

-- Calcule votre note finale d'algorithmique sur 20
procedure Main is

   note : Integer;

begin
   -- lecture de la note
   New_Line;

   Put_Line ("Quelle est votre note en algorithmique ? ");
   Get (note);

   --boucle demandant une note si elle est supérieur à 20 ou inférieur à 0
   while note<0 or note>20 loop
      Put("Note saisi non comprise entre 0 et 20");
      New_line;
      Put_Line ("Quelle est votre note en algorithmique ? ");
      Get (note);
   end loop;

   -- modification de la note

   if note < 20 then
      note := note + 2;
   end if;

   --note maximum 20
   if note>20 then
      note:=20;
   end if;

   -- affichage de la note
   Put ("Votre note est ");
   Put (note);
   Put_Line ("/20 car vous avez bien travaille !!");
   New_Line;


end Main;
