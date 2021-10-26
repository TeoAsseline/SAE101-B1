
with Implementation;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


package body Implementation is

   -- lit et range 4 entiers dans l'enregistrement code
   procedure  lireCode (code : out Enr ) is

   begin

      put_line ("Entrer la premiere chiffre du code d'identification de 4 chiffres : ");
      get(code.c1);
      put_line ("Entrer la deuxieme chiffre du code d'identification de 4 chiffres : ");
      get(code.c2);
      put_line ("Entrer la troisieme chiffre du code d'identification de 4 chiffres : ");
      get(code.c3);
      put_line ("Entrer la quatrieme chiffre du code d'identification de 4 chiffres : ");
      get(code.c4);

   end lireCode;

   -- retourne VRAI si le code memorise dans l'enregistrement code
   -- est correct et FAUX sinon
   function codeValide (code : in Enr) return Boolean is

      chiffreDuReste : Integer; -- chiffre attendu comme controle

   begin
      -- determiner le chiffre du reste
      chiffreDuReste :=(code.c1 + code.c2 + code.c3) mod 7 ;

     -- tester si le code est correct
     return (chiffreDuReste = code.c4) ;

   end codeValide ;

end Implementation;
