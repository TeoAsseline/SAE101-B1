
package Implementation is

   --En tete du type enregistrement
   type Enr is record
      c1  : Integer;
      c2  : Integer;
      c3  : Integer;
      c4  : Integer;
   end record;

   codeLu : Enr; --code



   --En tete sous-programme lirecode
   procedure  lireCode (code : out Enr );


   --En tete sous-programme codevalide
   function codeValide (code : in Enr) return Boolean;



   end Implementation;
