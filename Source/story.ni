"Castelrous" by Julien Frison

Include French by Eric Forgeot. 
Use French Language.

Release along with the source text. 
Release along with a solution. 
The release number is 3. 
The story description is "Fils d'un petit baron occitan durant la croisade contre les Albigeois, vous devez faire face à un assaut des croisés aux portes de votre château." 
The story creation year is 2013.
 
[Include Rideable Vehicles by Graham Nelson. [incompatible avec French]  ]

[Use VERBOSE room descriptions. ]

To say << :
	say "[unicode 171]".

To say >> :
	say "[unicode 187]";

Chapter 1 - Un réveil agité

The Chambre is a room. The description is "[if grand lit encloses the player][<<]Monseigneur ! Monseigneur ! Réveillez-vous ! [first time]Les croisés attaquent, ils ont ouvert une brèche dans la muraille est. [only][>>][otherwise]Vous êtes au milieu d'une chambre richement décorée, votre chambre. Mais il semble que vous n'ayez pas le temps de vous attarder sur la tapisserie. [end if]".
A grand lit is in the Chambre. The description is "Votre lit adoré.  Qu'il va falloir quitter maintenant.". An oreiller is on the grand lit. The grand lit is enterable. It is supporter. The player is on the grand lit. 
Instead of waking up when the player is in the grand lit:
	try exiting. 
Instead of looking under the grand lit, say "Il y a vraiment beaucoup de poussière sous ce lit. Dès que vous aurez repoussé l'assaut des croisés vous en parlerez sérieusement avec Joan.".
A fenêtre is in the Chambre. It is female. It is fixed in place. Instead of searching or examining the fenêtre: say "Vers l'est, vous pouvez voir une horde de guerriers francs s'avançant vers le château, massacrant déjà au passage parmi vos sujets les malheureux qui se trouvent sur leur chemin. Vous vous retournez soudainement en entendant des bruits de combat résonnant à travers les couloirs." ; if menace of the armée des croisés is less than imminente, increment menace of the armée des croisés. 
Instead of searching the fenêtre: [looking through]
	try examining the fenêtre. 
Understand "regarder par [something]" as examining [when noun is the fenêtre [marche pas ! ]]. 
Understand "regarder à travers [something]" as examining. [accent !]
In the Chambre is a man called Joan. Joan carries some chausses. The chausses are wearable. The chausses are female. 
Instead of talking to Joan, say "[<<]Il faut vous dépêcher monseigneur, votre père est en train de regrouper les défenseurs dans la cour du château. [>>][line break]".
Persuasion rule for asking Joan to try giving: say "[<<]Vos chausses monseigneur. [>>]"; persuasion succeeds.  [pas moyen de le faire marcher]
[Check Joan trying giving chausses to someone: if Joan does not enclose the chausses, stop the action. 
Carry out Joan trying giving chausses to someone: move chausses to the noun. ]
Before taking chausses, move chausses to the location.  [bypass]
Instead of exiting when the player is in the Chambre, try going north. 
Instead of going north from the Chambre when chausses is not worn and haubert is not worn, say "[<<]Monseigneur, vous oubliez vos chausses ! Un noble tel que vous ne peut pas sortir sans s'habiller un minimum, votre prestige en pâtirait. [>>][line break]".
An arme is a kind of thing. The épée is an arme in the Chambre. It is female. 
A poignard is an arme. The description is "Ce poignard finement décoré vous a été offert par votre père et vous le gardez avec vous depuis des années.". 
Instead of searching or looking under the oreiller: say "Sous votre oreiller se trouve toujours votre poignard, au cas où."; move the poignard to the grand lit. 
A haubert de maille is in the Chambre. The description is  "Avez-vous le temps d'enfiler votre haubert ? Un temps précieux perdu mais il serait risqué de foncer au combat sans. ". The haubert de maille is wearable. 
After wearing haubert de maille: say "Vous vous débattez avec votre haubert alors que les bruits de combat qui montent par la fenêtre se font de plus en plus envahissants." ; perdre du temps. 
To tomber du lit en attrapant (something - an object):
	say "Vous tendez votre main hors du lit pour tenter d'attraper votre [something], rechignant à vous levez de suite. Mais alors que votre bras s[']étire de tout son possible pour l'atteindre, vous finissez par glisser hors de votre lit et chuter tête la première dans une position ridicule qui ne manque pas d'amuser Joan. Vous vous relevez en faisant des yeux noirs à votre valet qui lutte pour s'empêcher de rire, malgré le sérieux de la situation.";
	move player to the location.
Instead of taking haubert de maille when the grand lit encloses the player, tomber du lit en attrapant haubert de maille.
Instead of taking épée when the grand lit encloses the player, tomber du lit en attrapant épée.

Menace is a kind of value. The menaces are à craindre, probable, inévitable, imminente and maintenant une réalité.
The armée des croisés has a menace. The menace of the armée des croisés is à craindre.  The armée des croisés has a number called progression.
To perdre du temps:
	if menace of the armée des croisés is less than maintenant une réalité:
		now progression of the armée des croisés is 1;
		increment menace of the armée des croisés. 

Santé is a kind of value. The santés are inflexible, fatigué, égratigné, blessé, mourrant and mort.
The player has a santé. 
Instead of examining the player, say "Vous êtes [santé of the player].". 
To blesser (victime - a person):
    if santé of victime is less than mort, increment santé of victime;
    if santé of the player is mort, end the story saying "Vous avez péri. Voilà qui marque la fin tragique de la maison de Castelrous, tandis que plus rien ne peut sauver vos sujets de l'emprise des francs.";
    if victime is the player, say "Vous êtes maintenant [santé of the player].". 

The porte en noyer is north of the Chambre and south of the Couloir sud. It is an open door. The porte en noyer is female. 

The Couloir sud is a room. The description is "L'aile sud réunit les pièces à vivre du château, dans une atmosphère relativement chaleureuse par rapport au reste de cette robuste construction. On y accède généralement par son extrémité est, qui mène du côté de la grande porte. "

[A garde is a kind of man. A guard usually wears a cotte de maille and a hallebarde. ]
A garde is a kind of man. A cotte de maille is a kind of thing. It is female. A hallebarde is a kind of thing. It is female. A guard usually wears a cotte de maille and a hallebarde.
Instead of talking to a garde, say "Garde : [<<]Nous devons rejoindre le reste des défenseurs à la porte est avant d'être débordés par les croisés monseigneur. [>>][line break]". 
Before examining garde, say "Garde : [<<]Tous à la porte est ! [>>] [line break]". 
In couloir sud is a garde called Ricard le garde. In couloir sud is a garde called Tòni le garde. 
Understand "Toni" as Tòni.
Understand "Antòni" as Tòni.
Understand "Antony" as Tòni.
Understand "Tony" as Tòni.
Understand "Richard" as Ricard. 

The Tour sud-est is east of the couloir sud.  The description is "Cette tour fonctionnelle se distingue de la délicatesse du couloir sud auquel elle donne accès par son côté ouest, elle ne mérite pas qu'on s'y attarde. [one of]D'autant plus que les bruits de combats se font de plus en plus proches.  [or][stopping]". 
Before going east to Tour sud-est [for the first time]: if menace of the armée des croisés is less than imminente, increment menace of the armée des croisés.

fausse porte is a kind of door. It is usually open. It is usually not openable. 
Escalier sud-est is below the tour sud-est and southeast of the Cour du château. It is a fausse porte. 

The Cour du château is a room. The description is "[if menace of armée des croisés <= imminente ]Au bout de la cour, vous voyez maintenant grande la porte trembler sous les coups de bélier. A chaque secousse, tremblent aussi la foule d'hommes en armes qui surveillent fixement cette protection ephémère contre les hordes de croisés. Dans l'aile nord, des flots de soldats continuent de sortir de la salle d'armes. [otherwise]La porte a cédé. Les défenseurs tentent de tenir la position mais reculent progressivement sous la fureur des croisés[end if]". 
Instead of waiting: if menace of the armée des croisés is less than maintenant une réalité, increment menace of the armée des croisés.
Baron Bertrand de Castelrous is a man in the cour du château. The description is "Votre père, malgré son âge avancé, [if santé of Baron Bertrand >= mourrant]a insisté pour diriger ses troupes en première ligne. Son armure porte la lourde empreinte d'un marteau de guerre. [otherwise if menace of armée des croisés <= imminente ]a tenu à diriger ses troupes en première ligne et attend l'ennemi derrière la porte dans son armure reluisante. [otherwise]s'est jeté dans la bataille comme un lion. A chaque reculade de ses hommes il s'emploie plus encore à essayer de remonter le moral en donnant l'exemple. [end if] Il est [santé of Baron Bertrand de Castelrous]. ". 
Baron Bertrand de Castelrous has a santé. 
Instead of waving hands to or talking to Baron Bertrand when the menace of the armée des croisés is less than maintenant une réalité for the first time, say "Baron Bertrand : [<<]Ah, te voilà enfin levé ! Les portes du château ne vont pas tenir bien longtemps sous les coups de leur bélier, cela nous laisse juste assez de temps pour nous réorganiser. Soyons prêts à les accueillir. [>>][line break]".
Understand "mon père" as Baron Bertrand de Castelrous.
Understand "père" as Baron Bertrand de Castelrous.

The Salle d'armes is north of the Cour du château. "Ici s'entassent quantité d'armes diverses dédiées à la défense du château. Impossible de faire un inventaire complet au milieu de la foule bouillonnante qui vous empêche d'avancer, mais quelques pièces intéressantes se trouvent à votre proximité. ". A bouclier is a kind of thing. A lance is a kind of arme. The salle d'armes contains six boucliers, ten lances, a spallière.  A spallière is wearable and female. A lance is female.  
After wearing spallière: say "Vous perdez un temps précieux à fixer toutes les attaches de votre spallière. Espérons qu'elle vous soit utile ! " ; if menace of the armée des croisés is less than maintenant une réalité, increment menace of the armée des croisés. 
Before going to Salle d'armes: perdre du temps ; say "Vous vous frayez péniblement un passage à contre-sens à travers la soldatesque. [line break]".

The défenseurs are men in the Cour du château. It is plural-named. 
Instead of talking to the défenseurs for the first time during Réveil Agité:
	say "Profitant des quelques minutes qui vous restent avant que la porte cède, vous vous lancez dans un discours théâtral pour motiver vos hommes. Pendant que vous insistez sur les traditions de paratge et votre devoir de protéger tous vos sujets sans exceptions, vous voyez que votre père dans son coin ne se prive pas de ricaner de vos élancées lyriques de jeune idéaliste. Quant aux hommes, ont-ils réellement apprécié le discours ou ont-il juste fait bonne figure ? Quoiqu'il en soit il reçoit une chaleureuse ovation. [line break]";
	perdre du temps.
Instead of talking to the défenseurs during Réveil Agité, say "Vous répétez à chacun les consignes pour tenir la position. [line break]".
Instead of talking to the défenseurs during Escarmouche, say "Vous lancez à vos troupes de grands cris d'encouragement qui résonnent à travers le brouhaha des combats. [line break]".

The assaillants are men. It is plural-named. 
Understand "ennemis" or "francs" or "franchimands" or "français" or "françois" or "françoys" or "croisés" or "barbares" as assaillants. [quitte à tomber un peu dans le néologisme pour aider un joueur qui s'égare]
Instead of doing something other than attacking or throwing or combatting or looking or examining or fleeing in the presence of the Assaillants: say "Vous êtes contraint de vous défendre contre les assaillants. Il faut les repousser ! [line break]". 
Instead of attacking the assaillants:
	if the player encloses lance:
		say "Au milieu de vos hommes vous tentez d'organiser un mur de lances pour stopper la progression de l'ennemi. [one of]Les croisés calment quelques temps leur rage pour s'organiser de la même façon, pendant que des renforts viennent s'ajouter à leurs rangs. [or]Vous réussissez à repousser un assaut et gagnez un peu de répit. [or] Quelques fantassins légers arrivent à se glisser sous les rangs de lances, mais ces escouades clairsemées sont vite mises en déroute. [or]La tactique ne s'avère pas efficace, les chevaliers lourdement protégés par leurs armures de plaques continuant d'avancer sans même ralentir. [at random][line break]";
	otherwise if the player encloses épée:
		say "[one of]Votre épée tournoie de toutes parts pour repousser les quelques croisés qui arrivent à traverser vos défenses et engager un combat au corps-à-corps. [or]Vous sortez des lignes de vos hommes dans une attaque explosive contre un des officiers ennemis, qui ne peut que se recroqueviller derrière son bouclier en attendant que ses hommes vous fassent reculer. [at random][line break]";
	otherwise:
		say "Vous n'avez pas d'arme convenable pour mener l'assaut ! [line break]";
	increment contre-attaques of the assaillants.
Combatting is an action applying to nothing.
Carry out combatting:
	try attacking the assaillants.
Understand "combattre" as combatting. 
Understand "me battre" as combatting.  [me/se battre ne marche pas ! Bloody yankees :P ]
Understand the command "se battre" as "combattre". 
Instead of throwing poignard at the assaillants:
	say "Vous repérez ce qui vous semble être un noble de haut-rang parmi les assaillants, et faites tournoyer votre poignard dans sa direction. Mais un poignard n'est pas vraiment un couteau de lancer. Son poids dévie rapidement la trajectoire vers le sol et rebondi sur les bottes metalliques du noble. Néanmoins, vous avez réussi à créer une diversion, ses hommes s'étant resserré autour de lui en posture défensive. [line break]" ;
	move poignard to the location;
	increment contre-attaques of the assaillants.
The assaillants have a number called contre-attaques;

Réveil Agité is a scene. 
Réveil Agité begins when play begins. 
Réveil Agité ends when the menace of the armée des croisés is maintenant une réalité. 
Every turn during Réveil Agité:
	if the time since Réveil Agité began >= 10 minutes and the remainder after dividing the time since Réveil Agité began by 4 is 1 minutes, perdre du temps;
	if the progression of the armée des croisés is 1 or remainder after dividing the time since Réveil Agité began by 4 is 1 minutes, say "L'arrivée des croisés est [menace of armée des croisés]. [line break]";
	now progression of the armée des croisés is 0.
When Réveil Agité ends: 
	say "Un grand bruit éclate soudainement et résonne dans le château : la grande porte a cédé !  [line break]" ;
	move assaillants to cour du château ;
	if the location is not Cour du château:
		increment santé of Baron Bertrand de Castelrous;
	otherwise:
		record "arriver à la grande porte à temps" as achieved.

The Aile sud is a region. The Chambre and Couloir sud are in the Aile sud.
The riches tapisseries are a backdrop. They are in the Aile sud.  They are plural-named. 
Instead of examining riches tapisseries:
    say "Vous admirez vos riches tapisseries, c'est vraiment une décoration de choix. En particulier cette scène de chasse que vous avez demandé à faire reproduire l'automne dernier. [line break]";
    perdre du temps. 

The Château de Castelrous is a region. The Aile sud, the Tour sud-est, the Salle d'armes and the Cour du château are in the château de Castelrous. 

Chapter 2 - Escarmouche

Escarmouche is a scene. Escarmouche begins when Réveil Agité ends. 
Escarmouche ends when santé of Baron Bertrand >= mourrant and Baron Bertrand is in the location. 
Every turn during Escarmouche: 
    if has fled is 2 and the location is Cour du château, now has fled is 1;
    if the time since Escarmouche began is less than 2 minutes and the location is not Cour du château
    begin;
    	increment santé of Baron Bertrand;
    	say "Vous entendez les bruits métalliques des armes qui s'entrechoquent. [if has fled < 2]Vous feriez mieux de vous dépêcher si vous ne voulez pas arriver une fois la bataille perdue. [otherwise]Les défenseurs se font massacrer pendant que vous fuyez comme un couard. [end if][line break]";
    end if;
    if the time since Escarmouche began is 2 minutes
    begin;
      if the location is Cour du château and santé of Baron Bertrand is not mort
	   begin;
	  say "Un guerrier franc surgit de la masse des assaillants en s[']élançant droit sur votre père tout en faisant tournoyer un large marteau de guerre. Cet homme est un géant aux dimensions effrayantes, dont la barbe sauvage et les cheveux longs ajoutent à l'aspect féroce. ";
           if the player encloses bouclier
           begin;
                  say "Vous plongez juste à temps pour intercepter le coup à l'aide de votre bouclier et sauver votre père d'une mort probable. [line break]" ;
           otherwise;
                  say "Vous plongez juste à temps pour pousser votre père hors de la trajectoire du marteau de guerre, qui ne peut que vous égratigner tandis que vous retombez lourdement sur le sol. [line break]" ;
		  blesser Baron Bertrand;
		  blesser the player;
           end if ;
       otherwise ; [dans cour]
       	    say "Vous entendez les bruits métalliques assourdissants des armes qui s'entrechoquent. [if has fled < 2]Vous feriez mieux de vous dépêcher si vous ne voulez pas arriver une fois la bataille perdue. [otherwise]Les défenseurs se font massacrer pendant que vous fuyez comme un couard. [end if][line break]";
            blesser Baron Bertrand;
	    blesser Baron Bertrand;
       end if ; [ pas dans cour]
    end if; [après 2 min]
    if the time since Escarmouche began is 4 minutes 
    begin;
        if contre-attaques of the assaillants < 2 and Baron Bertrand is in the location and santé of Baron Bertrand is not mort, say "Alors que vous restez bien prudemment derrière la première ligne de gardes, le vieux lion se déchaine contre les assaillants, s'engouffrant dans les brèches que son épée ouvre dans les rangs ennemis. Mais rendu de plus en plus téméraire par l[']évidence de la défaite, s'accrochant à son honneur, il finit par se trouver en difficulté. [line break]";
	repeat with missing_attacks running from contre-attaques of the assaillants to 2
	begin;
		blesser Baron Bertrand;
	end repeat;
    end if;
    if the time since Escarmouche began >= 5 minutes and Baron Bertrand is in the location and santé of Baron Bertrand is not mort
    begin;
	say "Les pertes parmi vos troupes sont de plus en plus importantes, et vous même vous trouvez bientôt à mener un combat totalement inégal face aux francs qui vous encerclent. Finalement, vous ne devez votre survie qu'au retour de votre père qui mobilise ses dernière forces pour vous porter secours, puis s[']écroule pendant que vous vous repliez tout deux par la tour nord-est. [line break]";
	repeat with dernières forces running from égratigné to santé of Baron Bertrand
	begin;
		if santé of the player < mort, increment the santé of the player;
	end repeat;
	now santé of Baron Bertrand is mourrant;
	if player encloses haubert de maille and player encloses spallière, blesser the player;
	if santé of the player is mort
	begin;
		say "Mais son sacrifice aura finalement été vain, tant vos sévères blessures [if player encloses haubert de maille and player encloses spallière]et le poids de votre équipement [end if]rendent votre course laborieuse. Jamais vous n'atteindrez la tour. ";
		blesser the player;
	otherwise;
	        move Baron Bertrand to Tour nord-est;
		move the player to Tour nord-est;
		now Escalier nord-est is closed;
	end if;
    else if the time since Escarmouche began >= 5 minutes and Baron Bertrand is not in the location and santé of Baron Bertrand is not mort;
	blesser Baron Bertrand;
    else if the time since Escarmouche began >= 5 minutes and santé of Baron Bertrand is mort and the location is Cour du château;
	say "[one of]Les combats s'éternisent et vos forces s'épuisent progressivement. Régulièrement épaulés de troupes fraîches, les croisés en surnombre ont déjà fait reculer vos troupes tout le long de l'épaisse entrée qui perce la muraille jusqu'à la grande porte. Une dizaine de mètres devant vous, tout juste pouvez vous encore voir le corps sans vie de votre père. [or]Les assaillants ont maintenant obtenu l'accès à la cour, et remplissent au fur-à-mesure cet espace qui leur permet de commencer à encercler vos maigres troupes. [or]Avec les quelques survivants dont le nombre se fait de plus en plus petit, vous vous pressez dans un coin, devant l'entrée de la tour nord-est. En évitant ainsi d'être complètement encerclés vous pouvez défendre votre honneur quelque temps supplémentaire, mais vous ne vous faites aucune illusion sur l'issue du combat. [stopping][line break]";
	blesser the player;
    else if the time since Escarmouche began >= 10 minutes and the location is not Cour du château;
	end the game saying "Pendant que vous fuyiez les combats, les assaillants ont défait vos derniers défenseurs et finissent de prendre possession de votre château. Vous êtes finalement capturé et périssez d'une mort humiliante. ";
    end if.

has fled is a number which varies. [0=oui, 1=est revenu, 2=toujours en fuite]
Fleeing is an action applying to nothing. Understand "fuir" as fleeing. 
Carry out fleeing:
	say "Fuir, moi ? Certainement pas ! Vous effacez rapidement cette idée honteuse de votre esprit. [line break]".
Instead of fleeing during the Escarmouche:
	blesser Baron Bertrand;
	now has fled is 2;
	say "Laissant vos hommes derrière vous, ainsi que tout paratge, vous fuyez vous cacher dans la tour nord-est. [line break]";
	move the player to tour nord-est. 
Instead of fleeing when Escarmouche has ended:
	say "Le tout est de trouver par où fuir... [line break]".

When the Escarmouche ends:
	if santé of the player is inflexible, record "quitter l'escarmouche indemne" as achieved.

Escalier nord-est is below the Tour nord-est and northeast of the Cour du château. It is an open door. It is not openable. 
Instead of going down to Cour du château during Fuite:
	say "Les croisés sont aux pieds de la tour et ce n'est plus le moment de faire preuve de bravoure, il vous faut trouver un moyen de fuir maintenant !".
Instead of going some direction when in Tour nord-est and we are not going west and we are not going down :
	say "Voulez-vous sauter par la fenêtre ? Soyons sérieux, regardez plutôt du côté du couloir vers l'ouest.".

Tour nord-est is a room. The description is "Une tour similaire aux autres, tour carrée en pierres grossières. Celle-ci est connectée au couloir nord sur sa face ouest. Par une petite meurtrière vous pouvez voir l'agitation de la cour, en contrebas. ".  It is in the château de Castelrous.
After going to Tour nord-est, perdre du temps.

Baron Bertrand de Castelrous wears sceau de Castelrous.

Fuite is a scene. Fuite begins when Escarmouche ends.
Fuite ends when the location is Passage secret. 
When Fuite begins:
	if santé of Baron Bertrand is mort
	begin;
		end the story saying "Vous avez beau avoir pû vous éloigner des combats, il n'y a plus rien à espérer maintenant : votre père est mort, vos soldats sont en déroute, et vous êtes bloqué sans la moindre issue. Ce n'est plus qu'une question de temps avant que ces barbares arrivent pour vous achever. ";
	else;
		say "Baron Bertrand (laborieusement) : [<<]Guilhem, mon fils, f... fuis. Dans la salle du conseil... la... torche. [>>][paragraph break]Puis il s[']éteint définitivement avant que vous puissiez lui demander plus amples explications, son sceau au creux de sa main ouverte.[line break]";
		increment santé of Baron Bertrand;
		move sceau de Castelrous to the location;
	end if.

Couloir nord is west of Tour nord-est. The description is "Sous des allures de passage de service, le couloir nord est l'endroit où se prennent la plupart des décisions importante de Castelrous. On peut notamment y trouver la salle du conseil au fond du couloir près de la tour nord-ouest. ".  It is in the château de Castelrous. 
Porte de la salle de l'assemblée des conseillers is a fausse porte. It is scenery. It is northwest of the Couloir nord and southeast of Salle du Conseil. 
Understand "salle du conseil" as Porte de la salle de l'assemblée des conseillers when the location is not Salle du Conseil.

The Salle du Conseil is a room. "Cette salle est décorée avec un certain bon goût tout en sobriété, comme pour y faire transparaître le sérieux des discussions auxquelles elle est dédiée. ". [It is northwest of the Couloir nord.] It is in the château de Castelrous. 
A torche is a kind of thing. A torche is usually lit. A torche is female. A torche can be either droite or de travers. A torche is usually droite. 
Understand "torches" as every torche. 
A torche décorative is a kind of torche. The printed plural name is "torches décoratives". 
A torche suspecte is a torche. It is de travers.
Understand "torche bizarre" or "torche de travers" or "torche de travers" or "torche tordue" or "torche étrange"  as torche suspecte.
Instead of examining or searching a torche: 
	if the noun is de travers and noun is in the Salle du Conseil:
		say "Cette torche-ci est bizarrement de travers. [line break]";
		move torche suspecte to the location of the noun [Salle du Conseil];
		now torche suspecte is droite; 
		now every torche which is de travers is off-stage ;
	else:
		say "Vous ne voyez pas ce que cette torche a de spécial. [line break]".
Instead of pulling or pushing or turning a torche when noun is in Salle du Conseil :
	say "La torche est insérée dans un support en demi-cylindre qui lui laisse peu de liberté de mouvement, à part pour l'enlever et la changer.".
Before taking off a de travers torche when noun is in Salle du Conseil :
	try silently taking noun;
	say "Une fois la torche enlevée, son support laisse apparaître une encoche ronde d'un peu plus d'un demi-pouce.  [line break]" instead. 
After taking or taking off a de travers torche, say "Une fois la torche enlevée, son support laisse apparaître une encoche ronde d'un peu plus d'un demi-pouce.  [line break]".
The support de la torche is a scenery in the Salle du Conseil. 
Understand "encoche ronde" as support. 
Understand "encoche" as support. 
Instead of inserting the sceau de castelrous into the support:
	say "Au moment où vous insérez le sceau de votre père dans l'encoche, un large pan de mur s'ouvre devant vous. Vous vous risquez dans ce passage secret, qui se referme doucement derrière vous dès que vous cessez de maintenir le sceau collé au support. Ceci n'est pas vraiment très rassurant, mais vous faites confiance à votre père. A ce que vous en avez compris en tout cas. De toute façon vous n'avez pas tellement le choix. [line break]";
	move the player to Passage secret.

One torche décorative is in the Salle du Conseil. It is de travers. 
Three torche décorative are in the Salle du Conseil. 
A large table oblongue is in the Salle du Conseil. It is female.



Chapter 3 - Le passage

À la Recherche de la Sortie is a scene. À la Recherche de la Sortie begins when Fuite ends.  À la Recherche de la Sortie ends when the location is the Grotte des hérétiques. 

Forme initiale is a santé which varies.

When À la Recherche de la Sortie begins:
	record "découvrir le passage secret" as achieved;
	now forme initiale is the santé of the player.

The Passage secret is a dark room. The description is "La pièce dans laquelle vous entrez ressemblerait plus à une armoire par ses dimensions, et vous auriez tout l'impression d[']être emmuré vivant s'il n'y avait ce trou béant dans lequel dépassent vos orteils. ". 

The échelle vétuste is below the Passage secret and above the Ouverture dans la roche. It is an open door. It is not openable. It is female. 

The Ouverture dans la roche is a dark room.The description is "En-dessous de cette échelle interminable par laquelle vous êtes descendu, se trouve une large cavité rocheuse humide. Ses parois irrégulières et ondulées ne laissent aucun doute quant à l'origine naturelle de cette ouverture. 

Devant vous, la grotte continue en se séparant. Divers symboles gravés dans la roche  sont associés à chaque direction, sans pour autant indiquer clairement laquelle est la bonne. Certainement dans le but de semer les poursuivants qui ne connaîtraient pas la signification des symboles. Malheureusement c'est aussi votre cas, votre père n'ayant pas eu le temps d'entrer dans les détails. ".

symbole gravé is a kind of fausse porte. It has a direction called orientation. It has a room called origine. The plural of symbole gravé is symboles gravés.
Understand "symbole" as symbole gravé. 
Understand "symboles" as every symbole gravé. 
Instead of reading a symbole gravé:
	try examining noun instead. 
To say orienter (something - a symbole gravé):
	if origine of something is the location:
		say "allant vers [the orientation]";
	otherwise:
		say "menant vers [the orientation] jusqu'ici".
croix gravée dans la roche is a kind of symbole gravé. It is usually female. The description is usually "Une simple croix, comme un X, est crûment gravée dans la roche naturelle. Elle ne fait que montrer une direction, [orienter noun], où aller... ou non. ". [The printed name is "croix gravée dans la roche". ]
croissant gravé dans la roche is a kind of symbole gravé. The description is usually "Un croissant de lune est crûment gravée dans la roche naturelle. Il ne fait que montrer une direction, [orienter noun], où aller... ou non. ".  [The printed name is "croissant gravée dans la roche".] 
triangle gravé dans la roche is a kind of symbole gravé. The description is usually "Un triangle, vaguement équilatéral, est crûment gravée dans la roche naturelle. Il ne fait que montrer une direction, [orienter noun], où aller... ou non. ". [The printed name is "triangle gravée dans la roche". ]

Tronçon de grotte is a kind of room. It is usually dark. 
The printed name is "Tronçon de grotte". 

Tronçon sécurisé is a kind of tronçon de grotte.
Tronçon piégé is a kind of tronçon de grotte. 
Instead of going to a tronçon piégé for the first time, say "Un [<<]clic[>>] se fait entendre, puis tout juste avez-vous le temps de réaliser ce qui vous arrive qu'un trait d'arbalète vous passe au raz de la joue. Vous avez eu chaud ! Vous faites demi-tour et vous apprétez à faire plus attention à là où vous mettez les pieds maintenant. [line break]".
After going to a tronçon piégé:
	say "Un nouveau trait d'arbalète surgit, et ne vous rate pas cette fois. [line break]";
	blesser the player. 
After going to a tronçon sécurisé for the third time, say "Décidemment, toutes ces cavités se ressemblent comme deux gouttes d'eau. [line break]".
After going to a tronçon sécurisé for the fifth time, say "Les mêmes symboles, la même roche, encore et toujours, vous espérez ne pas vous être perdu. [line break]".
After going to a tronçon sécurisé for the 16th time, say "Là c'est sûr vous avez dû vous perdre... [line break]". 

One croix gravée dans la roche is north of Ouverture dans la roche and south of tronçon1. The orientation is north. The origine is Ouverture dans la roche. Tronçon1 is a tronçon sécurisé. 

One croissant gravé dans la roche is west of the Ouverture dans la roche and east of tronçon1b. The orientation is west. The origine is Ouverture dans la roche. Tronçon1b is a tronçon sécurisé. 


One croissant gravé dans la roche is east of tronçon1 and west of tronçon2. The orientation is east. The origine is tronçon1. Tronçon2 is a tronçon sécurisé. 

One triangle gravé dans la roche is west of tronçon1 and east of  tronçon2b. The orientation is west. The origine  is tronçon1. Tronçon2b is a Tronçon sécurisé. 

One triangle gravé dans la roche is south of tronçon2 and north of tronçon3. The orientation is south. The origine is tronçon2.  tronçon3 is a Tronçon sécurisé.

One croix gravée dans la roche is north of tronçon2 ans south of tronçon3b. The orientation is north. Tronçon3b  is a Tronçon sécurisé.

One croix gravée dans la roche is east of tronçon3 and west of tronçon4. The orientation is east. tronçon4 is a Tronçon sécurisé.

One croissant gravé dans la roche is south of tronçon3 and north of tronçon4b. The orientation is south. tronçon4b is a Tronçon piégé. 

One croissant gravé dans la roche is north of tronçon4 and south of tronçon5.  The orientation is north. tronçon5 is a Tronçon sécurisé.

One triangle gravé dans la roche is east of tronçon4 end west of tronçon5b. The orientation is east. tronçon5b is a Tronçon piégé.

One triangle gravé dans la roche is north of tronçon5 and south of tronçon6. The orientation is north. tronçon6  is a Tronçon sécurisé.

One croix gravée dans la roche is east of tronçon5 and west of tronçon6b. The orientation  is east. tronçon6b is a Tronçon sécurisé.

One triangle gravé dans la roche is east of tronçon6b and west of tronçon6b2. The orientation is east. tronçon6b2 is a Tronçon piégé.

One croissant gravé dans la roche is south of tronçon6b and north of tronçon6b3. The orientation is south. tronçon6b3 is a Tronçon piégé.

One croissant gravé dans la roche is east of tronçon6 and west of tronçon7b. The orientation is east. tronçon7b is a Tronçon piégé. 

One triangle gravé dans la roche is east of tronçon7b and west of tronçon7b2. The orientation is east. tronçon7b2 is a Tronçon piégé. 

One croix gravée dans la roche is north of tronçon7b and south of tronçon7b3. The orientation is north.  tronçon7b3 is a Tronçon piégé.

One croix gravée dans la roche is north of tronçon6 and south of tronçon7. The orientation is north. tronçon7 is a Tronçon sécurisé. 

One croissant gravé dans la roche is west of tronçon7 and east of tronçon8. The orientation is west. tronçon8  is a Tronçon sécurisé.

One triangle gravé dans la roche is north of tronçon7 and south of tronçon8b. The orientation is north. tronçon8b is a Tronçon piégé.

One triangle gravé dans la roche is west of tronçon8 and east of tronçon9. The orientation is west. tronçon9 is a Tronçon sécurisé.

One croix gravée dans la roche is south of tronçon8 and north of tronçon9b. The orientation is south. tronçon9b is a Tronçon piégé.

One croissant gravé dans la roche is west of tronçon9 and east of tronçon10b. The orientation is west. tronçon10b is a Tronçon piégé.

One croix gravée dans la roche is south of tronçon9 and north of Lac sous-terrain. The orientation is south.

The partie sécurisée du labyrinthe is a region. Every tronçon sécurisé is in the partie sécurisée du labyrinthe. 
The partie piégée du labyrinthe is a region. Every tronçon piégé is in the partie piégée du labyrinthe. 
The labyrinthe troglodyte is a region. It contains the partie sécurisée du labyrinthe and the partie piégée du labyrinthe.

After going to the Lac sous-terrain:
	if forme initiale is the santé of the player, record "labyrinthe sans faute" as achieved; 
	record "arriver au lac" as achieved.

The description of Lac sous-terrain is "Un grande étendue d'eau se trouve devant vous, percée par quelques colonnes de roches s[']élevant ça et là. La surface est lisse, sans la moindre ride. Pas le moindre signe de vie. Une sensation de calme envahissant s'en dégage. ". 
Eau du lac is a scenery in Lac sous-terrain. The description is "L'eau est claire et fraîche, tout juste sortie des entrailles de la roche. Après quelques mètres de basse profondeur le long de la rive, le fond s'enfonce rapidement et votre regard s'y perd. ".  

Instead of drinking eau du lac when the location is the Lac sous-terrain for the first time:
	say "Vous vous posez au bord de l'eau pour vous désaltérer et vous rafraîchir. [line break]";
	if player encloses the chausses and santé of the player >= égratigné:
		say "Vous arrachez un peu de tissu de vos chausses pour tenter de panser tant bien que mal vos blessures après les avoir nettoyées. [line break]";
		decrement santé of player.
Instead of drinking eau du lac when the location is the Lac sous-terrain, say "Vous n'avez plus soif. ".

Instead of swimming when the location is the Lac sous-terrain:
	say "[if player encloses some torche or player encloses some bouclier or player encloses some lance]Après avoir laissé sur le bord ce qui encombre vos mains, vous[otherwise]Vous[end if] plongez dans l'eau glacée et cherchez une issue de ce côté. ";
	repeat with item running through torches carried by the player:
		move item to the location;
	repeat with item running through boucliers carried by the player:
		move item to the location;
	repeat with item running through lances carried by the player:
		move item to the location;
	if santé of player is mourrant:
		say "Ce n'est pas très prudent dans votre état. Ayant sur-estimé les maigres forces qui vous restent, vous ne tardez pas à vous noyer. ";
		blesser the player;
	if santé of player >= blessé and player encloses haubert de maille:
		say "Le poids de votre haubert gène considérablement votre nage. C'est trop pour un homme blessé, vous finissez par vous noyer. ";
		now santé of the player is mort;
		blesser the player;
	say "Après quelques minutes de tâtonnement dans les profondeurs du lac, vous finissez par trouver une voie qui remonte. Par chance il ne vous manque plus que quelques mètres à parcourir pour que cette voie débouche sur une nouvelle chambre, où vous pouvez de nouveau goûter aux joies de la respiration. Mais alors que vous émergez au son d'une bruyante inspiration suivie de halètements, éclaboussant largement les alentours, vous vous aperçevez soudainement que vous avez interrompu une cérémonie d'hérétiques. [line break]";
	move the player to voie d'eau [grotte des hérétiques];

Chapter 4 - Les Hérétiques

Découverte des Hérétiques is a scene. Découverte des Hérétiques begins when À la Recherche de la Sortie ends.

When Découverte des Hérétiques begins:
	record "découvrir les hérétiques" as achieved.

Grotte des hérétiques is a room.The description is "Cette large cavité parsemée de bougies vacillantes était le lieu d'un consolament jusqu[']à ce que vous veniez l'interrompre. Pour autant, ce lieu si rustique ne ressemble en rien à une chapelle et vous semble tout-à-fait innapproprié pour louer le Seigneur. ". 
A voie d'eau is a container in the grotte des hérétiques. It is female. It is open. It is transparent. It is not openable. 
Check swimming when the location is Grotte des hérétiques: say "Vous n'avez ni la force, ni le temps, ni même l'envie de retourner sur vos pas à travers cette voie d'eau. [line break]"; stop the action.

An attitude is a kind of value. The attitudes are amical, serein, dubitatif, suspicieux, inquiet, agressif. 

A parfait is a man inside the grotte des hérétiques. The description is "A une longueur de bras de vous se tient un vieil homme, portant un manuscrit rongé par le temps. [if the attitude of the parfait >= dubitatif and the attitude of the parfait <= inquiet and the santé of the parfait is not mort]Surpris par votre arrivée, il a délaissé le malade et vous fixe du regard. [end if] [if the santé of the parfait is not mort]Il est [attitude] and [santé].[otherwise]Il gît dans une mare de sang, mort. [end if] " . The parfait has a santé. The parfait has an attitude.  The attitude of the parfait is dubitatif. 
Understand "hérétique" or "cathare" as parfait. [bien que le terme cathare soit un néologisme]

An homme malade is a man inside the grotte des hérétiques. The description is "Allongé sur un long rocher à la surface un peu plus lisse que les autres, cet homme est d'une blancheur à faire peur, même sous la frêle lumière de la grotte. Nul doute qu'il découvrira bientôt l'inexistence de la réincarnation. ".
Understand "homme blessé" or "blessé" or "homme mourrant" as homme malade. 

An assemblée de bons chrétiens is a person inside the grotte des hérétiques. It is female. The description is "Ces soi-disant bons chrétiens sont réunis en arc de cercle autour du parfait et du malade, au fond de la grotte. ".
Understand "hérétiques" or "cathares" as assemblée de bons chrétiens. [bien que le terme cathare soit un néologisme]

Instead of talking to homme malade :
	say "L'homme est à moitié inconscient, impossible d'entamer une discussion.".
Instead of talking to assemblée de bons chrétiens :
	say "Ces hérétiques ne voudront pas s'interposer entre vous et le parfait qui les guide. C'est au parfait que vous devez vous adresser.".

Every turn during the Découverte des Hérétiques:
	if  the attitude of the parfait is dubitatif for the first time:
		increment attitude of the parfait;
		say "Parfait : [<<]Qui êtes-vous ? Que faites-vous là ? [>>] [line break]";
	otherwise if the attitude of the parfait is suspicieux:
		increment attitude of the parfait;
		say "Le parfait porte sa main sur un large couteau qu'il porte à la ceinture, et vous redemande de vous identifier. [line break]";
	otherwise if the attitude of the parfait is inquiet:
		say "Le parfait se rue sur vous en entaillant nerveusement l'air de son couteau. [line break]";
		increment attitude of the parfait;
		if the player wears haubert:
			say "Mais l'agitation pathétique du vieillard ne peut pas grand-chose contre les mailles de votre haubert sur lesquelles glisse la lame. [line break]";
		otherwise:
			blesser the player;
	otherwise if the attitude of the parfait >= agressif:
		say "Vous subissez un nouvel assaut du parfait. [line break]";
		blesser the player;

Instead of attacking when the player is in the voie d'eau: 
	say "Vous devez sortir de ce trou avant de pouvoir engager un combat. [line break]";
	stop the action. 

Instead of attacking the parfait when the player is in the grotte des hérétiques and the attitude of the parfait is not agressif:
	say "Pourquoi attaquer ce petit vieillard végétarien qui s'accroche à sa Bible ? Il ne représente aucune menace et ce ne serait pas très chrétien. [line break]";
	stop the action.


Instead of attacking the parfait when the player is in the grotte des hérétiques and the attitude of the parfait is agressif:
	if the player has some arme:
		now the santé of the parfait is mort;
		say "D'un seul coup, vous séparez la tête du corps du vieil homme. En une fraction de seconde vous avez occis l'un des derniers parfaits. Les autres hérétiques s'écartent paniqués et vous êtes libres de sortir de la grotte. [line break]";
		record "sortir de la grotte" as achieved;
		end the story saying "Vous avez échappé à la mort aujourd'hui, et pouvez maintenant préparer votre revanche contre les croisés. Mais valez-vous vraiment que mieux que ces barbares intolérants ? Voilà qui pèsera à la fois sur votre conscience et sur l'opinion du peuple. ";
	otherwise:
		say "Vous assenez au vieil homme un violent coup de poing. [line break]";
		if santé of the parfait < égratigné, blesser the parfait; 

Instead of talking to the parfait:
	say "Vous vous présentez et racontez rapidement vos aventures. L'homme reste dubitatif mais range son arme. 
	[line break]
	Parfait : [<<]Comment puis-je vous croire ?  Nous avons été habitués à de nombreuses fourberies.  Nombreux sont les nôtres qui ont été soumis aux supplices d'une Inquisition à laquelle ils ont été livrés par la traîtrise d'hommes avides de richesses et de pouvoir. [>>][line break]";
	now the attitude of the parfait is dubitatif;

Instead of showing sceau de Castelrous to the parfait when the attitude of the parfait is dubitatif:
	now the parfait is amical;
	record "amadouer le parfait" as achieved;
	say "Le parfait reconnaît le sceau et est rassuré. Après tout, sa communauté a tout intérêt à vous voir récupérer les terres de votre père plutôt que de laisser les étrangers les massacrer. ";
	now the santé of the player is inflexible;
	record "sortir de la grotte" as achieved;
	end the story saying "Les hérétiques pansent vos blessures et vous restez quelques temps avec eux pour vous remettre de vos épreuves, puis quelques jours plus tard ils vous aident à quitter discrètement la région pour rejoindre un de vos cousins dans le Roussillon et préparer votre revanche. ".

The Réseau sous-terrain is a region.  The Passage secret is in the réseau sous-terrain. The Ouverture dans la roche is in the réseau sous-terrain. The labyrinthe troglodyte is in the réseau sous-terrain. The Grotte des hérétiques is in the réseau sous-terrain. The lac sous-terrain is in the réseau sous-terrain. [Every tronçon de grotte is in the réseau sous-terrain. ]

Table of Tasks Achieved
Points	Citation	Time
2	"arriver à la grande porte à temps"	a time
5	"quitter l'escarmouche indemne"
1	"découvrir le passage secret"
5	"labyrinthe sans faute"
1	"arriver au lac"
1	"découvrir les hérétiques"
5	"amadouer le parfait"
10	"sortir de la grotte"

To record (T - text) as achieved:
	choose row with a citation of T in the Table of Tasks Achieved;
	if there is no time entry:
		now time entry is the time of day;
		increase the score by the points entry.

When play begins:
	now the maximum score is 0;
	repeat through the Table of Tasks Achieved:
		increase the maximum score by the Points entry. 

