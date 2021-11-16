with usager;              use usager;
with tabusager;           use tabusager;
with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure main is

   user_value: Integer;
	tab: Type_App;
	nb_usager: Integer;
	identifiant: Integer;
	trouve: Boolean;
	position: Integer;
   usager: Type_usager;
   position69: Integer;

begin

	put("Bienvenue sur AppUserAuto ! "); New_Line;
	loop
		put_line ("Si vous voulez créer une liste d'usager, tapez 1 : ");
		put_line ("Si vous voulez afficher tout les utilisateurs, tapez 2 : ");
		put_line ("Si vous voulez rechercher un usager à partir de son identifiant, tapez 3 : ");
		put_line ("Si vous voulez ajouter un usager, tapez 4 : ");
       put_line ("Si vous voulez supprimer un usager, tapez 5 : ");
       put_line ("Si vous voulez connaitre l'age d'un usager, tapez 6 : ");
       put_line ("Si vous voulez savoir si deux usagers ont les mêmes informations tapez 7 : ");
       put_line ("Si vous voulez savoir si deux usagers ont les mêmes informations sauf l'identifiant tapez 8 : ");
		put_line ("Si vous voulez comparer l'identifiant de deux usagers tapez 9 : ");
       put_line ("Si vous souhaitez quitter l'application, tapez n'importe quel autre valeur numérique : ");
		get (user_value);
		put_line ("vous avez rentré la valeur : "); New_Line;
		put (user_value); New_Line;
		case user_value is
         when 1 =>
             New_Line;
				put_line ("Vous avez donc choisi de créer une liste d'usager : ");
				lire_Usagers(tab, nb_usager);
         when 2 =>
             New_Line;
				put_line ("Vous avez donc choisi d'afficher tout les utilisateurs : ");
				ecrire_usagers(tab, nb_usager);
         when 3 =>
              New_Line;
              put_line ("Vous avez donc choisi de rechercher un usager à partir de son identifiant : ");
              put("Veuillez choisir un identifiant : ");
              get(identifiant);
              recherche_Usager_Par_Numero(tab, nb_usager, identifiant, trouve, position);
              if trouve then
                  put("Trouver ! "); New_Line;
              else
                  put("Identifiant Inconnu ! "); New_Line;
              end if;
         when 4 =>
             New_Line;
				put_line ("Vous avez donc choisi d'ajouter un nouveau usager : ");
				getUsager(usager);
				ajouter_Usager(tab, nb_usager, usager);
         when 5 =>
             New_Line;
				put_line ("Vous avez donc choisi de supprimer un usager : ");
				put_line ("Quel est l'identifiant de l'usager que vous souhaitez supprimer ? ");
				get(identifiant);
				supprimer_usager(tab, nb_usager, identifiant);
         when 6 =>
             New_Line;
				put_line ("Vous avez donc choisi de connaitre l'age d'un utilisateur : ");
				put_line ("Donnez la position de l'utilisateur dont vous souhaitez connaitre l'age : ");
            get(position);
             put("L'usager a : ");
				put(getAge(tab.Tab_User(position))); put(" ans."); New_Line;
         when 7 =>
              New_Line;
				put_line ("Vous avez donc choisi de savoir si deux usagers ont les mêmes informations : "); New_Line;
				put_line ("Donnez la position du premier utilisateur : ");
				get (position);
				put_line ("Donnez la position du deuxième utilisateur : ");
				get (position69); New_Line;
             if identitycompare(tab.Tab_User(position),tab.Tab_User(position69)) then
                  put("Les informations sont pareil ! "); New_Line;
              else
                  put("Les informations ne sont pas pareil ! "); New_Line;
            end if;
         when 8 =>
            New_Line;
				put_line ("Vous avez donc choisi de savoir si deux usagers ont les mêmes informations sauf l'identifiant : ");
				put_line ("Donnez la position du premier utilisateur : ");
				get (position);
            put_line ("Donnez la position du deuxième utilisateur : ");
            get (position69);
				if (tab.Tab_User(position))=(tab.Tab_User(position69)) then
					put_line("c'est les mêmes ! ");
				else
					put_line("c'est pas les mêmes ! ");
				end if;
         when 9 =>
            New_Line;
              put_line ("Vous avez donc choisi de comparer l'identifiant de deux usagers : ");
				put_line ("Donnez la position du premier utilisateur : ");
				get (position);
				put_line ("Donnez la position du deuxième utilisateur : ");
				get (position69);
				if (tab.Tab_User(position))<(tab.Tab_User(position69)) then
					put_line("L'usager 1 est plus petit que l'usager 2 ! ");
				else
					put_line("L'usager 1 est plus grand que l'usager 2 ! ");
				end if;
         when others =>
             New_Line;
				put_line ("Merci d'avoir utilisé AppUserAuto ! ");
				exit;
		end case;
	end loop;
end main;
