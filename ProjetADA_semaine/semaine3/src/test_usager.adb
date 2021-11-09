with usager;              use usager;
with tabusager;           use tabusager;
with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure test_usager is

   usager : Type_Usager; --usager 1
   age    : Integer; --age test
   usager2 : Type_Usager; --usager 2

   tab: Type_App; --enregistrement avec tab et nb element
   user1: Type_Usager; --user 1
   user2: Type_Usager; --user 2
   user3: Type_Usager; --user 3
   usertest: Type_Usager; --usertest
   trouve1: Boolean; --testBoolean
   rang1: Integer; --testrang

begin
   -- Test lecture usager
   getUsager (usager);
   -- Test affichage usager
   putUsager (usager);
   -- Test calcul âge usager
   age := getAge (usager);
   Put ("L'age de l'usager est de ");
   Put (age,0);
   put(" ans");
   new_line;
   -- test affectation
   usager2 := affectation2(usager);
   putUsager (usager2);
   -- test égalité : Usagers identiques
   if usager = usager2 then
      put_line ("L'égalité entre deux usagers identiques est OK");
   else
      put_line ("L'égalité entre deux usagers identiques est KO");
   end if;
  -- test égalité : Usagers égaux
   usager.numero_adherent := 0;
   usager2.numero_adherent := 1;
   if usager = usager2 then
      put_line ("L'égalité entre deux usagers différents sur l'identifiant est OK");
   else
      put_line ("L'égalité entre deux usagers différents sur l'identifiant est KO");
   end if;
   -- test égalité : Usagers différents sur le nom
   usager.longueur := 1;
   usager.nom(1..usager.longueur) := " ";
   usager2.numero_adherent := 1;
   if usager = usager2 then
      put_line ("L'égalité entre deux usagers différents sur le nom est KO");
   else
      put_line ("L'égalité entre deux usagers différents sur le nom est OK");
   end if;
   -- test égalité : Usagers différents sur l'age
   usager2 := usager ;
   usager2.annee_naissance := 2000;
   usager.annee_naissance := 2020;
  if usager = usager2 then
      put_line ("L'égalité entre deux usagers sur l'annee de naissance est KO");
   else
      put_line ("L'égalité entre deux usagers sur l'annee de naissance est OK");
   end if;
   -- test identityCompare : étudiants identiques
   usager2 := usager ;
   if identityCompare(usager, usager2) then
      put_line ("Identity Compare entre deux usagers identiques est OK");
   else
      put_line ("Identity Compare entre deux usagers identiques est KO");
   end if;
   -- test identityCompare : étudiants différents
   usager.numero_adherent := 0 ;
   usager2.numero_adherent := 1 ;
   if identityCompare(usager, usager2) then
      put_line ("Identity Compare entre deux usagers non identiques est KO");
   else
      put_line ("Identity Compare entre deux usagers non identiques est OK");
   end if;
   -- test "<" : usager < usager 2
   if usager < usager2 then
      put_line ("Comparaison entre usager1 < usager2 est OK");
   else
      put_line ("Comparaison entre usager1 < usager2  est OK");
   end if;
   -- test "<" : usager2 < usager
   usager2.numero_adherent := -1 ;
    if usager < usager2 then
      put_line ("Comparaison entre usager1 > usager2 est KO");
   else
      put_line ("Comparaison entre usager1 > usager2 est OK");
   end if;
   -- test "<" : usager2 = usager
   usager2.numero_adherent := 0 ;
    if usager < usager2 then
      put_line ("Comparaison entre usager1 = usager2 est KO");
   else
      put_line ("Comparaison entre usager1 = usager2 est OK");
   end if;

   user1.numero_adherent:= 12;
   user1.longueur:= 3;
   user1.nom(1..3) := "teo";
   user1.annee_naissance:= 2000;

   user2.numero_adherent:= 13;
   user2.longueur:= 6;
   user2.nom(1..6) := "arthur";
   user2.annee_naissance:= 2010;

   user3.numero_adherent:= 14;
   user3.longueur:= 4;
   user3.nom(1..4) := "jean";
   user3.annee_naissance:= 2012;

   affectation(user1,tab.Tab_User(1));
   affectation(user2,tab.Tab_User(2));
   affectation(user3,tab.Tab_User(3));
   tab.nb_User:=3;

   usertest.numero_adherent:= 15;
   usertest.longueur:= 3;
   usertest.nom(1..3) := "teo";
   usertest.annee_naissance:= 2000;


   find(tab,user1,trouve1,rang1);
   --test find
   if trouve1=True then
      put("test find est ok");
   else
      put("test find est ko");
   end if;
   New_Line;

   addLast(usertest,tab);

   --test addLast
   if tab.nb_User=4 then
      put("test addLast est ok");
   else
      put("test addLast est ko");
   end if;
   New_Line;

   remove(tab,2);

   --test remove
   if tab.nb_User=3 then
      put("test remove est ok");
   else
      put("test remove est ko");
   end if;
   New_Line;

   sort(tab);

   --test sort
   if tab.Tab_User(1) < tab.Tab_User(2) then
      put("test sort est ok");
   else
      put("test sort est ko");
   end if;
   New_Line;

   exception
   when DEBORDEMENT =>
      put ("trop de valeurs � lire !") ;

   when SAME_ID =>
      put ("L'identifiant apparait d�j� dans le tableau utilisateur !") ;

   when VIDE =>
      put ("Le tableau est vide !");

   when TOO_BIG_ID =>
      put ("L'ID est plus grand que le nombre d'usager ! ");
end test_usager;
