
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Implementation; use Implementation;

procedure verifierCeCode is

begin

   lireCode(code=>codeLu);

  -- Verifier le code
  if codeValide (code=>codeLu) then
	Put ("Ce code est correct pour ce photocopier ");
  else
	Put ("Ce code n'est pas correct pour ce photocopieur ");
  end if;


end verifierCeCode;
