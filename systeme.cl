;;;TP3 IA01
;;;Pinault-Marechal 05/01/15

;;Pour lancer l'interface, appelez la fonction (start_largeur) ou la fonction (start_profondeur)
;;Vous n'avez ensuite plus qu'à répondre aux questions!


;;Regles
;;communes homme et femme 
(setq R1 '( ((climat froid)) ((veste oui)) ))
(setq R2 '( ((tatouage oui)(occasion formel+)) ((conseil "Ne laissez pas vos tatouages apparents pour une occasion formelle")) ))
(setq R3 '( ((tatouage oui)(occasion formel)) ((conseil "Ne laissez pas vos tatouages apparents pour une occasion formelle")) ))


;femmes:
;regles universelles: 

(setq R4  '( ((taille grand) (sexe femme)) ((talon non) (conseil "Les talons hauts vont trop elancer la silhouette et renforcer le cote longiligne.")) ))
(setq R5  '( ((IMC fin) (sexe femme)) ((talon non) (conseil "Les talons hauts vont trop elancer la silhouette et renforcer le cote longiligne.")) ))
(setq R6  '( ((IMC normal) (taille moyen) (sexe femme)) ((talon oui) (conseil "Les talons hauts vont permettre d'elancer la silhouette.")) ))
(setq R7  '( ((IMC normal+) (taille moyen) (sexe femme)) ((talon oui) (conseil "Les talons hauts vont permettre d'elancer la silhouette. Preferez les epais a bout rond.")) ))
(setq R8  '( ((IMC normal) (taille petit) (sexe femme)) ((talon oui) (conseil "Les talons hauts vont permettre d'elancer la silhouette. Preferez les epais a bout rond.")) ))
(setq R9  '( ((IMC normal+) (taille petit) (sexe femme)) ((talon oui) (conseil "Les talons hauts vont permettre d'elancer la silhouette. Preferez les epais a bout rond.")) ))

(setq R10 '( ((sexe femme) (climat chaud) (age junior)) ((haut manche courte)) ))
(setq R11 '( ((sexe femme) (age senior)) ((haut manche longue) (conseil "A partir d'un certain age couvrez vos bras avec un chale ou des manches 3/4")) ))
(setq R12 '( ((sexe femme) (IMC normal+) (age junior)) ((haut manche longue)) ))
(setq R13 '( ((sexe femme) (climat froid)(age junior)(IMC normal)) ((haut manche longue)) ))
(setq R14 '( ((sexe femme) (climat froid)(age junior)(IMC fin)) ((haut manche longue)) ))

(setq R15 '( ((sexe femme) (IMC fort) (preference pantalon)) ((bas type pantalon) (bas forme bootcut)) ))
(setq R16 '( ((sexe femme) (IMC fort) (preference jupe)) ((bas type jupe) (bas forme evase)) ))
(setq R17 '( ((sexe femme) (IMC obese)) ((bas type jupe) (forme jupe evase)) ))
(setq R18 '( ((sexe femme)  (IMC fin)  (preference pantalon)) ((bas type pantalon) (bas forme droit)) ))
(setq R19 '( ((sexe femme) (IMC normal) (preference pantalon)) ((bas type pantalon)) ))
(setq R20 '( ((sexe femme) (IMC normal) (preference jupe)) ((bas type jupe)) ))
(setq R21 '( ((sexe femme)  (IMC fin)  (preference jupe)) ((bas type jupe) (bas forme boule) (conseil "La jupe boule ou trapeze permet d'apporter du volume")) ))
(setq R22 '( ((sexe femme)  (bas forme slim)) ((haut forme evase) (conseil "Avec un slim on fait un contraste dans les volumes en mettant un haut evase")) ))
(setq R23 '( ((sexe femme)  (bas forme droit)) ((haut forme cintre) (conseil "Un haut cintre permet de mettre en valeur les hanches pour les femmes en V ou I")) ))
(setq R24 '( ((sexe femme)  (bas forme evase)) ((haut forme droit) (conseil "Un haut droit et fluide feminise et cache les rondeurs")) ))
(setq R25 '( ((sexe femme)  (bas forme bootcut)) ((haut forme droit) (conseil "Un haut droit et fluide feminise et cache les rondeurs")) ))


;Formel+:

(setq R27 '( ((sexe femme) (occasion formel+) ) ((bas genre tailleur)) ))
(setq R28 '( ((sexe femme) (IMC normal) (bas type pantalon) (occasion formel+)) ((bas forme droit)) ))
(setq R29 '( ((sexe femme) (occasion formel+) (bas type jupe)) ((bas longueur genou)) ))
(setq R30 '( ((sexe femme) (IMC normal) (bas type jupe) (occasion formel+)) ((bas forme crayon) (collant oui)) ))
(setq R31 '( ((sexe femme) (IMC normal+) (bas type jupe) (occasion formel+)) ((collant opaque) (conseil "Le collant opaque va affiner la jambe.")) ))
(setq R32 '( ((sexe femme) (IMC fin) (bas type jupe) (occasion formel+)) ( (collant oui)) ))

(setq R33 '( ((sexe femme) (occasion formel+)) ((decollete rond) (conseil "En situation formelle un grand decollete serait deplace. On privilegera les cols ronds, carres et benitiers.")) ))
(setq R34 '( ((sexe femme) (occasion formel+) (haut manche longue)) ((haut type chemisier) (conseil "Le chemisier blanc est intemporel, c'est une valeur sure")) ))
(setq R35 '( ((sexe femme) (occasion formel+) (haut manche courte)) ((haut type blouse_manche_courte )) ))
(setq R36 '( ((sexe femme) (occasion formel+)) ((veste tailleur)) ))
(setq R37 '( ((sexe femme) (occasion formel+) (talon non)) ((chaussure type ballerine)) ))
(setq R38 '( ((sexe femme) (occasion formel+) (talon oui)) ((chaussure type escarpin) (conseil "Pour les femmes habituees a marcher en talons, ceux-ci font gagner en elegance et en assurance lors d’un entretien. Ils ne doivent pas depasser 5cm.")) ))

;Formel:

(setq R39 '( ((sexe femme) (veste oui) (occasion formel) (IMC fin)) ((veste courte) (conseil "Le blouson court va donner du volume aux bustes menusn et marquer la taille")) ))
(setq R40'( ((sexe femme) (veste oui) (occasion formel) (IMC normal)) ((veste cintre) (conseil "La veste cintree feminise en soulignant la taille")) ))
(setq R41 '( ((sexe femme) (veste oui) (occasion formel) (IMC normal+)) ((veste cintre) (conseil "La veste cintree feminise en soulignant la taille")) ))

(setq R42 '( ((sexe femme) (IMC normal+) (bas type jupe) (occasion formel) (climat froid)) ((chaussure type bottes) (conseil "Les botines vont couper la cheville et accentuer les mollets forts: avec une jupe, mieux vaut des bottes, qui affinent la jambe")) ))
(setq R43 '( ((sexe femme) (IMC normal+) (occasion formel) (climat chaud)) ((chaussure type compense) (chaussure ouverte) ("Les talons afinnent. Pour les personnes fortes, on prefere des talons epais pour equilibrer l'allure")) ))
(setq R44 '( ((sexe femme) (IMC fin) (occasion formel) (climat froid)) ((chaussure type bottines)) ))
(setq R45 '( ((sexe femme) (IMC normal) (occasion formel) (climat froid)) ((chaussure type bottines)) ))
(setq R46 '( ((sexe femme) (IMC normal+) (occasion formel) (climat froid) (bas type pantalon) ) ((chaussure type bottines)) ))
(setq R47 '( ((sexe femme) (IMC normal) (occasion formel) (climat chaud) (talon oui)) ((chaussure type escarpin)) ))
(setq R48 '( ((sexe femme) (talon non)(climat chaud)(occasion formel)) ((chaussure type ballerines)) ))

(setq R49 '( ((sexe femme) (IMC normal) (bas type pantalon)(occasion formel)) ((bas forme slim)) ))
(setq R50 '( ((sexe femme) (occasion formel) (bas type pantalon) (climat froid)) ((bas matiere jeanbrut)) ))
(setq R51 '( ((sexe femme) (occasion formel) (bas type pantalon) (climat chaud)) ((bas matiere toile)) ))
(setq R52 '( ((sexe femme) (occasion formel) (bas type jupe)) ((bas longueur genou) (bas matiere crepe)) ))


(setq R53 '( ((sexe femme) (bas type jupe) (occasion formel)) ((collant oui)) ))
(setq R54 '( ((sexe femme) (occasion formel) (climat chaud)) ((haut blouse)) ))
(setq R55 '( ((sexe femme) (occasion formel) (climat froid)) ((haut pull_fin)) ))
(setq R56 '( ((sexe femme) (occasion formel) (bas type jupe) (poitrine faible)) ((decollete haut)) ))
(setq R57 '( ((sexe femme) (occasion formel) (poitrine forte)) ((decollete rond) (conseil "Quand on a une poitrine forte on evite les cols trop hauts qui donnent du volume et les decolletes plongeant")) ))
(setq R58 '( ((sexe femme) (occasion formel) (bas type pantalon) (poitrine faible)) ((decollete V) (conseil "Les cols en V mettent en valeur les poitrines petites et moyennes")) )) 
(setq R59 '( ((sexe femme) (occasion formel) (talon oui)) ((conseil "Pour les femmes habituees a marcher en talons, ceux-ci font gagner en elegance. Ils ne doivent pas depasser 7cm.")) ))

;informel:
(setq R60 '( ((sexe femme) (veste oui) (occasion informel) (taille petit)) ((veste courte) (conseil "Le blouson court va donner du volume aux bustes menusn et marquer la taille")) ))
(setq R61 '( ((sexe femme) (veste oui) (occasion informel) (taille moyen)) ((veste cintre) (conseil "La veste cintree feminise en soulignant la taille")) ))
(setq R62 '( ((sexe femme) (veste oui) (occasion informel) (taille grand)) ((veste cintre) (conseil "La veste cintree feminise en soulignant la taille")) ))

(setq R63 '( ((sexe femme) (IMC normal) (bas type pantalon)(occasion informel)) ((bas forme slim)) ))
(setq R64 '( ((sexe femme) (IMC normal+) (bas type jupe) (occasion informel) (climat froid)) ((chaussure type bottes) ("Avec une jupe, les bottines cassent la cheville et alourdissent la jambe. On preferera des bottes pour allonger la jambe.")) ))
(setq R65 '( ((sexe femme) (IMC normal+) (occasion informel) (climat froid) (bas type pantalon)) ((chaussure type bottines)) ))
(setq R66 '( ((sexe femme) (IMC fin) (occasion informel) (climat froid)) ((chaussure type sneakers)) ))
(setq R67 '( ((sexe femme) (IMC fin) (occasion informel) (climat chaud)) ((chaussure type sandale) (chaussure ouverte)) ))
(setq R68 '( ((sexe femme) (IMC normal) (occasion informel) (climat chaud)) ((chaussure type sandale) (chaussure ouverte)) ))

(setq R69 '( ((sexe femme) (occasion informel) (bas type pantalon)) ((bas matiere jean)) ))
(setq R70 '( ((sexe femme) (occasion informel) (bas type jupe) (IMC normal)) ((bas longueur genou)) ))
(setq R71 '( ((sexe femme) (occasion informel) (bas type jupe) (IMC normal+)) ((bas longueur genou)) ))
(setq R72 '( ((sexe femme) (occasion informel) (bas type jupe) (IMC fin)) ((bas longueur pied) (conseil "La jupe longue apporte de la souplesse a la silhouette")) ))
(setq R73 '( ((sexe femme) (bas type jupe) (occasion informel) (climat froid)) ((collant oui)) ))
(setq R74 '( ((sexe femme) (bas type jupe) (occasion informel) (climat chaud) ) ((collant non)) ))
(setq R75 '( ((sexe femme) (occasion informel) (bas type jupe) (poitrine faible)) ((decollete haut)) ))
(setq R76 '( ((sexe femme) (occasion informel) (poitrine forte)) ((decollete rond)) ))
(setq R77 '( ((sexe femme) (occasion informel) (bas type pantalon) (poitrine faible)) ((decollete V) (conseil "Les cols en V mettent en valeur les poitrines petites et moyennes")) ))

;Accessoires:

(setq R78 '( ((sexe femme) (taille petit) (IMC fin)) ((sac petit) (conseil "Quand on est petite, un sac trop grand tasse la silhouette")) ))
(setq R79 '( ((sexe femme) (taille petit) (IMC normal)) ((sac petit) (conseil "Quand on est petite, un sac trop grand tasse la silhouette")) ))
(setq R80 '( ((sexe femme) (IMC normal) (taille moyen)) ((sac moyen)(conseil "On evite un modele de sac trop petit qui fait soiree")) ))
(setq R80 '( ((sexe femme) (IMC normal) (taille grand)) ((sac moyen)(conseil "On evite un modele de sac trop petit qui fait soiree")) ))
(setq R81 '( ((sexe femme) (IMC fort)) ((sac grand) (conseil "Les sacs oversize conviennent parfaitement aux rondes: un sac trop petit desequilibre l'allure")) ))
(setq R82 '( ((sexe femme) (IMC obese)) ((sac grand)(conseil "Les sacs oversize conviennent parfaitement aux rondes: un sac trop petit desequilibre l'allure")) ) )
(setq R83 '( ((sexe femme) (chaussure ouverte)) ((pedicure oui)(conseil "Des chaussures ouvertes impliquent une pedicure parfaite")) ))
(setq R84 '( ((collant oui)) ((conseil "Les collants doivent être de couleur noire, jamais nude!")) ))
(setq R85  '( ((sexe femme)(IMC fin)) ((collier plastron) (conseil "Le collier plastron habille le port de tete et ilumine les bustes menus")) ))
(setq R86  '( ((sexe femme)(IMC fin)) ((bracelet jonc) (conseil "Les bracelets joncs apportent du volume et de la rondeur à la silhouette en mettant les poignets en valeur")) ))
(setq R87 '( ((sexe femme)(IMC normal+)) ((collier sautoire)(conseil "N'hesitez pas a mettre de gros bijoux'")) ))
(setq R88 '( ((sexe femme)(IMC normal)(taille petit)) ((collier court)(conseil "Quand on est petite, on evite les bijoux surdimensionnes")) ))

;Maquillage:
(setq R89 '( ((sexe femme) (yeux vert)) ((mascara violet) (conseil "Le mascara violet fait ressortir les yeux verts, bruns et miel")) ))
(setq R90 '( ((sexe femme) (yeux marron)) ((mascara bleu) (conseil "Les mascaras indigo et marine vont particulierement bien aux yeux noisette")) ))
(setq R91 '( ((sexe femme) (yeux bleu)) ((mascara noir) (conseil "Le mascara noir fait ressortir les yeux bleus")) ))
(setq R92 '( ((sexe femme) (age junior)) ((fard oui)) ))
(setq R93 '( ((sexe femme) (occasion informel)) ((rougealevre oui)) ))
(setq R94 '( ((sexe femme) (occasion formel)) ((rougealevre oui)) ))
(setq R95 '( ((sexe femme) (occasion formel+) ) ((rougealevre non) (conseil "En entretien par exemple il faut miser sur un maquillage naturel: le teint est tres important. Le rouge a levre vulgarise")) ))
(setq R96 '( ((sexe femme)(yeux bleu) (fard oui)) ((fard taupe)) ))
(setq R97 '( ((sexe femme)(yeux vert) (fard oui)) ((fard prune)) ))
(setq R98 '( ((sexe femme)(yeux marron) (fard oui)) ((fard bleunuit) (conseil "Les couleurs froides comme le bleu marine ou bleu nuit mettent en valeur les yeux marrons")) ))
(setq R99 '( ((sexe femme)(peau mate) (rougealevre oui)) ((rougealevre fonce) (conseil "Maquillez soit la bouche, soit les yeux, jamais les 2!")) ))
(setq R100  '( ((sexe femme)(peau noire) (rougealevre oui)) ((rougealevre fonce) (conseil "Avec une peau foncee, vous pouvez vous permettre de maquiller a la fois votre bouche et vos yeux.")) ))
(setq R101 '( ((sexe femme)(peau blanche) (rougealevre oui)) ((rougealevre clair) (conseil "Maquillez soit la bouche, soit les yeux, jamais les 2!")) ))

;Couleurs:

(setq R102 '( ((sexe femme) (occasion formel+) ) ((conseil "Pour une occasion formelle on privilegie les couleurs sobres comme le blanc, le noir et le beige. Evitez le total look noir en mettant des accessoires ou des chaussures colores")) ))
(setq R103 '( ((sexe femme) (IMC obese) ) ((conseil "Quand on est pulpeuse on evite les imprimes qui vont tasser et on privilegie le ton su ton.")) ))
(setq R104 '( ((sexe femme) (peau noire) ) ((conseil "Si vous avez une peau foncee, choisissez le blanc pour illuminer votre teint.")) ))

;hommes:
;regles universelles

(setq R103 '( ((cravate oui)(imc mince)) ((cravate forme fine)(conseil "On considere qu’une cravate est fine si sa largeur et inferieure a 5,4cm")) ))
(setq R104 '( ((cravate oui)(imc normal))((cravate forme moyenne)(conseil "On considere qu’une cravate est de largeur moyenne si elle est comprise entre 5,5 et 7,9cm")) ))
(setq R105 '( ((cravate oui)(imc fort))((cravate forme large)(cravate noeud gros)(conseil "On considere qu’une cravate est large si sa largeur est superieure a 8cm")) ))
(setq R106 '( ((cravate oui)(imc obese))((cravate forme large)(cravate noeud gros)(conseil "On considere qu’une cravate est large si sa largeur est superieure a 8cm")) ))

(setq R107 '( ((imc mince)(tenue costume)) ((veste_costume cintrage oui)(veste_costume cintrage double)(conseil "Le double cintrage convient parfaitement aux personnes minces ou athletiques")(bas forme fusele)(chaussure type court)(conseil "Un pantalon fusele donne un air jeune et dynamique")(chemise forme etroite)) ))
(setq R108 '( ((imc normal)(tenue costume)) ((veste_costume cintrage oui)(veste_costume cintrage simple)(chaussure type court)(bas forme fusele)(conseil "Un pantalon fusele donne un air jeune et dynamique")(chemise forme etroite)) ))
(setq R109 '( ((veste_costume cintrage oui))((conseil "Lorsque l’on choisit une veste a cintrage, il faut faire attention a l’alignement des rayures et des carreaux")) ))
(setq R110 '( ((imc fort)(tenue costume)) ((veste_costume cintrage droit)(bas forme droit)(chaussure type longue)(chemise forme droite)) ))
(setq R111 '( ((imc obese)(tenue costume)) ((veste_costume cintrage droit)(bas forme droit)(chaussure type longue)(chemise forme droite)) ))


(setq R112 '( ((sexe homme)(taille petit)(tenue costume)) ((epaule sans_rembourrage)(conseil "Lorsque l’on est petit il ne vaut mieux pas disproportionner la carrure en usant d’epaulettes")) ))

(setq R113 '( (sexe homme)(cou long) ((conseil "Vous pouvez porter un col haut. mais ne depassez pas une hauteur superieure a 7cm a moins de vouloir ressembler a Karl Lagerfeld")) ))

(setq R114 '( ((haut chemise)(visage rond)) ((col forme pointu)) ))
(setq R115  '( ((haut chemise)) ((conseil "La hauteur de votre col ne doit pas depasser 7 cm")) ))
(setq R116 '( ((haut chemise)(veste veste_costume))((conseil "La hauteur de votre col doit etre proportionne a la taille de votre revers de veste (1cm de col de chemise doit depasser")) ))
(setq R117 '( ((haut chemise)(haut manche longue)(veste oui))((conseil "le poignet de la chemise doit depasser legerement de la veste (1 a 3 cm)")) ))
(setq R118 '( ((haut chemise)) ((conseil "Evitez les chemises a double boutonnerie, doublure bicolore ou boutons carres qui ne sont pas dans la tendance")) ))


(setq R119 '( ((tenue costume)) ((ceinture oui)(conseil "La longueur de votre ceinture est ideale lorsqu’elle depasse de la boucle de ceinture de 10cm")) ))
(setq R120 '( ((ceinture oui)(occasion formel) (climat chaud)) ((ceinture matiere tissu)(conseil "Prendre imperativement le meme tissu que le costume, la ceinture doit avoir ete achetee en meme temps que ce dernier")) ))
(setq R121 '( ((ceinture oui)(occasion informel) (climat chaud)) ((ceinture matiere tissu)(conseil "Prendre imperativement le meme tissu que le costume, la ceinture doit avoir ete achetee en meme temps que ce dernier")) ))
(setq R122 '( ((ceinture oui)(occasion formel+)) ((ceinture matiere cuir)(conseil "Accorder la ceinture aux chaussures")) ))
(setq R123 '( ((ceinture oui)(occasion formel) (climat froid)) ((ceinture matiere cuir)(conseil "Accorder la ceinture aux chaussures")) ))
(setq R124 '( ((ceinture oui)(occasion informel)(climat froid)) ((ceinture matiere cuir)(conseil "Accorder la ceinture aux chaussures")) ))

;tres formel (entretien d’embauche, metier finance)

(setq R125 '( ((sexe homme)(occasion formel+)) ((tenue costume)(costume matiere laine)(veste_costume nb_bouton 3)(barbe_rasee oui)(haut chemise)(bas type costume)(cravate oui)(conseil "Prenez une cravate tres classique, evitez les fantaisies")(conseil "Prenez des chaussures a lacet (par exemple Richelieus, Oxford, one cut), ne prenez pas de cuir vernis")) ))

(setq R126 '( ((haut chemise)(occasion formel+)) ((haut manche longue)(conseil "Meme en ete preferez une chemise a manche longue car la chemise a manche courte fait peu formel et n’est pas a la mode")) ))


;formel (travail plus classiques)
(setq R127 '( ((sexe homme)(occasion formel)) ((barbe_rasee oui)(tenue costume)(veste_costume nb_bouton 2)(haut chemise)(bas type costume)(chaussure classique)(cravate oui)(conseil "Prenez une cravate classique, evitez les fantaisies mais vous pouvez prendre une cravate de couleur ou avec des motifs repetitifs")(conseil "Prenez des chaussures a lacet, ne prenez pas de cuir vernis")) ))

(setq R128 '( ((haut chemise)(occasion formel)) ((haut manche longue)(conseil "Meme en ete preferez une chemise a manche longue car la chemise a manche courte fait peu formel")) ))


(setq R129 '( ((sexe homme)(climat froid)) ((conseil "Vous pouvez mettre un gilet sous votre veste de costume. Il faut que le tissu et la couleur soient identiques a ceux du costume")) ))


;informel (travail confort, ...)
(setq R130 '( ((sexe homme)(occasion informel)) ((depareille oui)(cravate non)(barbe_autorisee oui)) ))
(setq R131 '( ((sexe homme)(occasion informel)(climat chaud)) ((bas type short)(conseil "si vous n'aimez pas les shorts vous pouvez choisir un pantalon en lin qui est une matiere assez legere")(haut manche courte)(haut polo)(conseil "Preferez le polo au T-shirt qui manque de structure")(chaussure type bateau)(conseil "Si vous le souhaitez vous pouvez egalement porter des moccassins, les chaussures ouvertes cependant font plage et neglige")) ))

(setq R132 '( ((sexe homme) (occasion informel)(climat froid)) ((bas type pantalon)(conseil "Vous pouvez au choix porter un pantalon en Jean, en velours ou en tweed qui sont des matieres plus chaudes. Si vous choisissez le Jean evitez le jean delave ou troue qui fera neglige")(haut polo)(conseil "Preferez le polo au T-shirt qui manque de structure")(veste pull)(chaussure type bottines)(conseil "Il existe de nombreux types de bottines, laissez parler votre creativite, tout en veillant a l'accorder au reste de votre tenue. Avec le jean vous pouvez choisir des bottines en cuir ou bien des bottines timberland pour plus de virilite")) ))

(setq R133 '( ((sexe homme)(bas type pantalon)(age junior)) ((bas matiere jean)(conseil "Evitez le jean de couleur delavee ou troue qui fera neglige")) ))
(setq R134 '( ((sexe homme)(bas type pantalon)(age senior)) ((bas matiere laine_epaisse)(conseil "La categorie laine_epaisse regroupe les tissus du type velours, tweed,...")) ))

(setq R135 '( ((sexe homme)(occasion informel)(taille petit)) ((haut forme cintree)(bas forme semi-slim)) ))
(setq R136 '( ((sexe homme)(veste pull)(musculature normale)(taille moyen)) ((pull forme V)) ))
(setq R137 '( ((sexe homme)(veste pull)(musculature normale)(taille grand)) ((pull forme V)) ))

(setq R138 '( ((sexe homme)(veste pull)(musculature importante)(taille moyen)) ((pull forme long)) ))
(setq R139 '( ((sexe homme)(veste pull)(musculature importante)(taille grand)) ((pull forme long)) ))

(setq R140 '( ((sexe homme)(veste pull)(musculature faible)(taille moyen)) ((pull forme droite)) ))
(setq R141 '( ((sexe homme)(veste pull)(musculature faible)(taille grand)) ((pull forme droite)) ))

;Couleurs 

 (setq R142 '( ((tenue couleur gris)) ((conseil "chaussures de couleur beige ou marron")) ))

(setq R143 '( ((tenue costume)(costume couleur gris)) ((conseil "Avec un costume gris choisissez des chaussures de couleur beige ou marron")) ))
(setq R144 '( ((tenue costume)(costume couleur noir)) ((conseil "Avec un costume noir choisissez des chaussures de couleur marron ou grises. Evitez le noir sauf si vous portez des vetements de tres bonne facture.")) ))
(setq R145 '( ((tenue costume)(costume couleur marron)) ((conseil "Avec un costume marron choisissez des chaussures de couleur bleu petrole ou noires")) ))
(setq R146 '( ((tenue costume) (costume couleur beige)) ((conseil "Avec un costume beige choisissez des chaussures de couleur vertes, bleues ou marrons")) ))
(setq R147 '( ((depareille oui)) ((conseil "Portez une couleur plus foncee en bas")) ))
(setq R148 '( ((sexe homme)(yeux bleu)) ((haut couleur bleu)(conseil "Rappelez la couleur de vos yeux avec votre haut")) ))
(setq R149 '( ((sexe homme)(peau mate)(occasion informel)) ((tenue couleur vive)) ))
(setq R150 '( ((sexe homme)(peau mate)(occasion formel)) ((tenue couleur clair)(conseil "Les couleurs claires vont tres bien aux personnes mates de peau")) ))
(setq R151 '( ((sexe homme)(peau mate)(occasion formel+)) ((tenue couleur clair)(conseil "Les couleurs claires vont tres bien aux personnes mates de peau")) ))

(setq R152 '( ((sexe homme)(peau noire)(occasion informel)) ((tenue couleur vive)) ))
(setq R153 '( ((sexe homme)(peau noire)(occasion formel)) ((tenue couleur clair)(conseil "Les couleurs claires vous mettent en valeur en contrastant avec votre couleur de peau")) ))
(setq R154 '( ((sexe homme)(peau noire)(occasion formel+)) ((tenue couleur clair)(conseil "Les couleurs claires vous mettent en valeur en contrastant avec votre couleur de peau")) ))

(setq R155 '( ((sexe homme)(peau blanche)(occasion informel)) ((tenue couleur sobre)) ))
(setq R156 '( ((sexe homme)(peau blanche)(occasion formel)) ((tenue couleur foncee)(conseil "Une tenue foncee donnera un effet classe")) ))
(setq R157 '( ((sexe homme)(peau blanche)(occasion formel+)) ((tenue couleur foncee)(conseil "Une tenue foncee vous donnera un effet classique et formel")) ))
(setq R158 '( ((cheveux roux))((conseil "Ne portez pas de rouge car cela ferait ressortir les rougeurs de votre visage")) ))

(setq *regles* '(R1 R2 R3 R4 R5 R6 R7 R8 R9 R10 R11 R12 R13 R14 R15 R16 R17 R18 R19 R20 R21 R22 R23 R24 R25 R27 R28 R29 R30 R31 R32 R33 R34 R35 R36 R37 R38 R39 R40 R41 R42 R43 R44 R45 R46 R47 R48 R49 R50 R51 R52 R53 R54 R55 R56 R57 R58 R59 R60 R61 R62 R63 R64 R65 R66 R67 R68 R69 R70 R71 R72 R73 R74 R75 R76 R77 R78 R79 R80 R81 R82 R83 R84 R85 R86 R87 R88 R89 R90 R91 R92 R93 R94 R95 R96 R97 R98 R99 R100 R101 R102 R103 R104 R105 R106 R107 R108 R109 R110 R111 R112 R113 R114 R115 R116 R117 R118 R119 R120 R121 R122 R123 R124 R125 R126 R127 R128 R129 R130 R131 R132 R133 R134 R135 R136 R137 R138 R139 R140 R141 R142 R143 R144 R145 R146 R147 R148 R149 R150 R151 R152 R153 R154 R155 R156 R157 R158))
  

;;Dialogue avec l'utilisateur

(defun debut ()
  
  (format t "~%~%Bienvenue! Nous allons vous guider dans le choix de votre tenue.~%~%")
  
  (write "Quel est votre genre sexuel: Homme/Femme?")
  (setq reponse (read))
    (cond
    ((equal reponse 'homme)(setq *bdf* (cons '(sexe homme) *bdf*)))
     ((equal reponse 'femme)(setq *bdf* (cons '(sexe femme) *bdf*))))
  
     (write "Quel est votre age?")
  (setq reponse (read))
  (cond
      ((<= reponse 50)(setq *bdf* (cons '(age junior) *bdf*)))
     ((> reponse 50)(setq *bdf* (cons '(age senior) *bdf*))))

   (write "Quelle est votre taille en metre?")
  (setq taille (read))
  (cond
   ((fait? '(sexe femme))
  (cond
      ((<= taille 1.55)(setq *bdf* (cons '(taille petit) *bdf*)))
   ((and (> taille 1.55) (< taille 1.80))(setq *bdf* (cons '(taille moyen) *bdf*)))
   ((>= taille 1.80)(setq *bdf* (cons '(taille grand) *bdf*)))))
      ((fait? '(sexe homme))
  (cond
            ((<= taille 1.65)(setq *bdf* (cons '(taille petit) *bdf*)))
   ((and (> taille 1.65) (< reponse 190))(setq *bdf* (cons '(taille moyen) *bdf*)))
   ((>= taille 1.90)(setq *bdf* (cons '(taille grand) *bdf*))))))

   (write "Quel est votre poids?")
  (setq poids (read))
  (calcul_IMC taille poids)
    (cond
      ((<= IMC 18.5)(setq *bdf* (cons '(IMC fin) *bdf*)))
     ((and (> IMC 18.5) (<= IMC 25))(setq *bdf* (cons '(IMC normal) *bdf*)))
     ((and (> IMC 25) (<= IMC 30))(setq *bdf* (cons '(IMC fort) *bdf*)))
   ((> IMC 30)(setq *bdf* (cons '(IMC obese) *bdf*)))
	((> IMC 25)(setq *bdf* (cons '(IMC normal+) *bdf*))))

    (cond 
   ((fait? '(sexe femme))
      (write "Quelle est votre taille de bonnet? 1.<D 2.>=D")
  (setq reponse (read))
    (cond
    ((equal reponse '1)(setq *bdf* (cons '(poitrine faible) *bdf*)))
     ((equal reponse '2)(setq *bdf* (cons '(poitrine forte) *bdf*))))
    
      (write "Preferez-vous porter: Jupe/Pantalon?")
  (setq reponse (read))
    (cond
    ((equal reponse 'jupe)(setq *bdf* (cons '(preference jupe) *bdf*)))
     ((equal reponse 'pantalon)(setq *bdf* (cons '(preference pantalon) *bdf*))))
    
    ))
  
        (cond 
   ((fait? '(sexe homme))
      (write "Comment considerez vous votre cou? Court/Long")
    (setq reponse (read))
    
    (cond
    ((equal reponse 'court)(setq *bdf* (cons '(cou court) *bdf*)))
     ((equal reponse 'long)(setq *bdf* (cons '(cou long) *bdf*))))
    (write "Avez-vous un visage rond ?")
    
     (setq reponse (read))
    (cond
    ((equal reponse 'oui)(setq *bdf* (cons '(visage rond) *bdf*)))
     (t nil))
    
    (write "Comment considerez-vous votre musculature ? Faible/Normale/Importante")
     (setq reponse (read))
    (cond
    ((equal reponse 'faible)(setq *bdf* (cons '(musculature faible) *bdf*)))
     ((equal reponse 'normale)(setq *bdf* (cons '(musculature normale) *bdf*)))
     ((equal reponse 'importante)(setq *bdf* (cons '(musculature importante) *bdf*))))
    
        (write "Quelle est votre couleur de cheveux?")
     (setq reponse (read))
    (cond
    ((equal reponse 'roux)(setq *bdf* (cons '(cheveux roux) *bdf*))))
    ))
  
  (write "Quelle est votre couleur de peau? Blanche/Mate/Noire")
  (setq reponse (read))
    (cond
    ((equal reponse 'blanche)(setq *bdf* (cons '(peau blanche) *bdf*)))
     ((equal reponse 'mate)(setq *bdf* (cons '(peau mate) *bdf*)))
     ((equal reponse 'noire)(setq *bdf* (cons '(peau noire) *bdf*))))
  
        (write "Avez-vous un tatouage?")
  (setq reponse (read))
    (cond
    ((equal reponse 'oui)(setq *bdf* (cons '(tatouage oui) *bdf*)))
     ((equal reponse 'non)(setq *bdf* (cons '(tatouage non) *bdf*))))

        (write "Pour quelle occasion voulez-vous vous habiller? Tres_formelle/Formelle/Informelle")
  (setq reponse (read))
    (cond
    ((equal reponse 'tres_formelle)(setq *bdf* (cons '(occasion formel+) *bdf*)))
     ((equal reponse 'formelle)(setq *bdf* (cons '(occasion formel) *bdf*)))
     ((equal reponse 'informelle)(setq *bdf* (cons '(occasion informel) *bdf*))))
  
      (write "Quelle est la couleur de vos yeux? Bleue/Verte/Marron")
  (setq reponse (read))
    (cond
    ((equal reponse 'bleue)(setq *bdf* (cons '(yeux bleu) *bdf*)))
     ((equal reponse 'verte)(setq *bdf* (cons '(yeux vert) *bdf*)))
     ((equal reponse 'marron)(setq *bdf* (cons '(yeux marron) *bdf*))))
  
        (write "La temperature actuelle est-elle plutot: Hivernale/Estivale?")
  (setq reponse (read))
    (cond
    ((equal reponse 'hivernale)(setq *bdf* (cons '(climat froid) *bdf*)))
     ((equal reponse 'estivale)(setq *bdf* (cons '(climat chaud) *bdf*))))
  
  )

;;;FONCTIONS DE SERVICE


;;initialisation des listes globales

(defun init ()
  (setq *parcouru* nil)
  (setq *bdf* '()))

;;Fonction de calcul de l'IMC

(defun calcul_IMC (taille poids)
  (setq IMC (/ poids (* taille taille))))

;;Retourne t si un fait est present dans la base de fait

(defun fait? (l)
  (dolist (x *bdf*)
    (if (equal x l) (return-from fait? t) nil)))

;;Renvoie la conclusion d'une regle

(defun conclu (R)
  (cadr R))

;;Renvoie la premisse d'une regle

(defun premisse (R)
  (car R))

;;Verifie si une regle peut etre appliquee a partir de la base de faits

(defun verif (R)
  (dolist (P (premisse (eval R)))
    (if
        (not (fait? P)) (return-from verif nil)))
  (return-from verif t))

;;Affiche le resultat depuis la base de faits

(defun affichage ()
  (format t "~%~%Voici la compostition de la tenue que nous vous conseillons:~%~%")
  (loop for x in *bdf* 
      until (equal (premisse x) 'climat)
      do 
        (cond 
         ((equal (premisse x) 'conseil) (print (conclu x)))
         (t (print x)))))


;;;MOTEURS DE RECHERCHE

;;Chainage avant en profondeur d'abord

;;Lancement des fonctions nécessaires
(defun start_profondeur ()
  (init)
  (debut)
  (lancement_moteur_profondeur)
  (affichage))

;;Lance moteur_profondeur tant qu'il reste des regles candidates
(defun lancement_moteur_profondeur ()
    (loop while (equal (moteur_profondeur) t) do
          (moteur_profondeur)))

;;Parcourt l'arbre depuis la debut et s'arrete a la premiere regle candidate
(defun moteur_profondeur ()
  (dolist (R *regles*)
    (cond 
     ((and (not (member R *parcouru*)) (equal (verif R) t)) 
      (dolist (C (conclu (eval R)))
        (push C *bdf*))
       (push R *parcouru*)
       (return-from moteur_profondeur t))
     (t nil))) nil) 

;;;Chainage avant en largeur d'abord

;;Lancement des fonctions necessaires
(defun start_largeur ()
  (init)
  (debut)
  (lancement_moteur_largeur)
  (affichage))

;;Lance moteur_largeur tant qu'il reste des regles candidates
(defun lancement_moteur_largeur ()
    (loop while (equal (moteur_largeur) t) do
          (moteur_largeur)))

;;Enregistre les regles candidates dans une liste et ajoute toutes leur conclusion dans la base de faits
(defun moteur_largeur ()
  (let (regles_candidates)
    (dolist (R *regles*)
      (if (and (verif R)(not (member R *parcouru*)))
          (push R regles_candidates)))
    (cond
     ((not (null regles_candidates))
        (dolist (RC regles_candidates)
          (dolist (C (conclu (eval RC)))
            (push C *bdf*))
          (push RC *parcouru*))
          (return-from moteur_largeur t))
  (t nil))))



                    
                    