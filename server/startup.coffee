Meteor.startup ->
    if Meteor.users.find().count() is 0
        Accounts.createUser
            username: 'fred'
            password: 'password'
            email: 'frederick.bouchard88@gmail.com'
            profile:
                name: 'Frederick Bouchard'

        Accounts.createUser
            username: 'admin'
            password: 'AdminPassword'
            email: 'admin@pharmacolloque.info'
            profile:
                name: 'Pharmacolloque admin account'

    if TextDB.find().count() is 0

        TextDB.insertTranslations {name: "Subtitle", html_tag: "subtitle", category: "homepage", text_content: "University colloquium in pharmaceutical field"}, {fr: {text_content: "Colloque universitaire en milieu pharmaceutique"}}
        TextDB.insertTranslations {name: "Homepage Header", html_tag: "homepage_header", category: "homepage", text_content: "Actual and future stake of pharmaceutical field"}, {fr: {text_content: "Enjeux actuels et futurs du milieu pharmaceutique"}}
        TextDB.insertTranslations {name: "Event Date", html_tag: "event_date", category: "homepage", text_content: "January 9, 2017"}, {fr: {text_content: "9 janvier 2017"}}
        TextDB.insertTranslations {name: "Mission 1st paragraph", html_tag: "mission_dialog1", category: "our mission", text_content: "Organized as a result of a close collaboration between the students of the Bachelor program in the biopharmaceutical science field at the pharmacy faculty of Montreal University and the DESS department and superiors cycles of the same university, the colloquim aims to promote and instigate the discovery of the biopharmaceutical and pharmacology science programs, these being respectively provided within these institutes. After this event, students from these areas are called to exchange on the many aspects of drug development, from basic research to the marketing of therapeutic agents. In addition, lectures and interviews with many experts in industrial, clinical, academic and business fields are expected to inform young academics regarding innovative research topics, state some of pharmacy issues and explain the role and importance of the various facets of the latter."}, {fr: {text_content: "Organisé à la suite d’une étroite collaboration entre les étudiants du programme de baccalauréats en sciences biopharmaceutiques de la faculté de pharmacie de l'Université de Montréal, ainsi que le département du DESS et des cycles supérieurs de cette même université, le Pharmacolloque vise à promouvoir et instiguer à la découverte des programmes de baccalauréats en sciences biopharmaceutiques et en pharmacologie, ceux-ci étant respectivement offerts au sein de ces instituts. Au terme de cet évènement, les étudiants provenant de ces domaines sont appelés à tergiverser sur les multiples aspects du développement du médicament, soit de la recherche fondamentale jusqu’à la mise en marché d’agents thérapeutiques. De plus, conférences et entretiens avec de nombreux experts des champs industriels, cliniques, universitaires et commerciaux sont prévus afin d’informer la relève universitaire en ce qui concerne des sujets de recherche novateurs, en plus d’énoncer certains enjeux du domaine pharmaceutique et d’expliquer le rôle et l’importance des différentes facettes de ce dernier."}}
        TextDB.insertTranslations {name: "Mission 2nd paragraph", html_tag: "mission_dialog2", category: "our mission", text_content: "Following these exchanges, all students present will then be invited to put it to work and integrate their knowledge by participating in simulation exercises and solving probable and applied problems. The organizing committee finally gives an award highlighting the teams that have demonstrated their knowledge, initiative and critical mind throughout the exercise. Beyond being an opportunity for the transmission of information, the conference encourages students to interact among themselves or with the professionals present in order to ultimately maintain relevant and substantial scientific discussions."}, {fr: {text_content: "Suivant ces échanges, tous les élèves présents sont ensuite invités à mettre à l’œuvre et intégrer leurs connaissances acquises en participant à des mises en situations et en résolvant des problématiques vraisemblables et appliquées. Le comité organisationnel procède finalement à une remise de prix soulignant les équipes ayant démontré leur savoir, leur initiative et leurs esprits critiques tout au long du déroulement de l’exercice. En plus d’être un moment propice à la transmission d’information, le colloque incite les étudiants à interagir entre eux ou avec les professionnels présents dans le but d’entretenir ultimement des discussions scientifiques pertinentes et substantielles."}}
        TextDB.insertTranslations {name: "Calendar Title", html_tag: "calendar_title", category: "calendar", text_content: "Schedule of activities for the event"}, {fr: {text_content: "Horaire des activités de l'événement"}}
        TextDB.insertTranslations {name: "Day 1", html_tag: "day_1", category: "calendar", text_content: "January 9th 2016"}, {fr: {text_content: "9 janvier 2016"}}
        TextDB.insertTranslations {name: "Map Title", html_tag: "map_title", category: "how to get there", text_content: "We're pleased to welcome you at the following location: "}, {fr: {text_content: "Nous sommes heureux de pouvoir vous accueillir à l'endroit suivant: "}}
        TextDB.insertTranslations {name: "Event Location", html_tag: "event_location", category: "how to get there", text_content: "Pavillon Jean Coutu"}, {fr: {text_content: "Pavillon Jean Coutu"}}
        TextDB.insertTranslations {name: "Event Address", html_tag: "event_address", category: "how to get there", text_content: ", 2940 Chemin de Polytechnique, Montreal, QC, H3T 1J4"}, {fr: {text_content: ", 2940 chemin de Polytechnique, Montréal, QC, H3T1J4"}}
        TextDB.insertTranslations {name: "Event Lat/Long", html_tag: "event_lat_long", category: "how to get there", lat: "45.50049", long: "-73.61481"}

    if Events.find().count() is 0
        Events.insertTranslations {name: "Participants arrival", time: "12h30-13h30", id:1, speaker: null, day: "1"}, {fr: {name: "Arrivée des participants"}}
        Events.insertTranslations {name: "First conference", time: "13h30-14h30", id:2, speaker: null, day: "1"}, {fr: {name: "Première conférence"}}
        Events.insertTranslations {name: "Break", time: "14h30-15h", id:3, speaker: null, day: "1"}, {fr: {name: "Pause"}}
        Events.insertTranslations {name: "Second conference", time: "15h-16h", id:4, speaker: null, day: "1"}, {fr: {name: "Deuxième conférence"}}
        Events.insertTranslations {name: "Break", time: "16h-16h30", id:5, speaker: null, day: "1"}, {fr: {name: "Pause"}}
        Events.insertTranslations {name: "Third conference", time: "16h30-17h30", id:6, speaker: null, day: "1"}, {fr: {name: "Troisième conférence"}}
        Events.insertTranslations {name: "Break", time: "17h30-18h", id:7, speaker: null, day: "1"}, {fr: {name: "Pause"}}
        Events.insertTranslations {name: "Supper", time: "18h-20h", id:8, speaker: null, day: "1"}, {fr: {name: "Souper"}}
        Events.insertTranslations {name: "Dessert and thanks", time: "20h-21h", id:9, speaker: null, day: "1"}, {fr: {name: "Dessert et remerciements"}}
        Events.insertTranslations {name: "Personal development activity", time: "22h-2h", id: 10, speaker: "Captain Morgan with the collaboration of Jack Daniels", day: "1"}, {fr: {name: "Activité de développement personnel", speaker: "Capitaine Morgan avec la collaboration de Jack Daniels"}}
        Events.insertTranslations {name: "Breakfast", time: "8h30-10h", id:11, speaker: null, day: "2"}, {fr: {name: "Déjeuner"}}
        Events.insertTranslations {name: "Real-Life situation #1", time: "10h-11h", id:12, speaker: null, day: "2"}, {fr: {name: "Mise en situation #1"}}
        Events.insertTranslations {name: "Break", time: "11h-11h30", id:13, speaker: null, day: "2"}, {fr: {name: "Pause"}}
        Events.insertTranslations {name: "Real-Life situation #2", time: "11h30-12h30", id:14, speaker: null, day: "2"}, {fr: {name: "Mise en situation #2"}}
        Events.insertTranslations {name: "Break", time: "12h30-13h", id:15, speaker: null, day: "2"}, {fr: {name: "Pause"}}
        Events.insertTranslations {name: "Real-Life situation #3", time: "13h-14h", id:16, speaker: null, day: "2"}, {fr: {name: "Mise en situation #3"}}
        Events.insertTranslations {name: "Thanks and prize giving", time: "14h-15h", id:17, speaker: null, day: "2"}, {fr: {name: "Remerciements et remise des prix"}}
        Events.insertTranslations {name: "Departure", time: "15h-16h", id:18, speaker: null, day: "2"}, {fr: {name: "Départ"}}

    if Contacts.find().count() is 0

        Contacts.insertTranslations {name: "Paliana Piankova", category: "business", role: "Sponsor Montreal area", email: "palina.piankova@umontreal.ca", phone: "514-559-0380"}, {fr: {role: "Commanditaire région de Montréal"}}
        Contacts.insertTranslations {name: "Sarah-Jade Lavallée", category: "student", role: "UDEM representative", email: "sarah-jade.lavallee-hanlin@umontreal.ca", phone: "514-929-9442"}, {fr: {role: "Représentant pour l'UdeM"}}
        Contacts.insertTranslations {name: "Rana Salamé", category: "student", role: "DESS and superiors cycles representative", email: "rana.salame@umontreal.ca", phone: "514-258-7613"}, {fr: {role: "Représentant pour le DESS et les cycles supérieurs"}}
        Contacts.insertTranslations {name: "Sarah-Jade Lavallée", category: "professional", role: "Speaker from UDEM", email: "sarah-jade.lavallee-hanlin@umontreal.ca", phone: "514-929-9442"}, {fr: {role: "Conférencier pour l'UdeM"}}

    if Video.find().count() is 0

        Video.insert {vid_id: "wJi-qJSCGEI"}
