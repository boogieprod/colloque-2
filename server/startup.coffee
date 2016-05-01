Meteor.startup ->
    if Meteor.users.find().count() is 0
        Accounts.createUser
            username: 'fred'
            password: 'password'
            email: 'frederick.bouchard88@gmail.com'
            profile:
                name: 'Frederick Bouchard'

    if TextDB.find().count() is 0

        TextDB.insertTranslations {name: "header_text", text_content: "University colloquium in pharmaceutical field"}, {fr: {text_content: "Colloque universitaire en milieu pharmaceutique"}}
        TextDB.insertTranslations {name: "homepage_header", text_content: "Actual and future stake of pharmaceutical field"}, {fr: {text_content: "Enjeux actuels et futurs du milieu pharmaceutique"}}
        TextDB.insertTranslations {name: "event_date", text_content: "January 9, 2017"}, {fr: {text_content: "9 janvier 2017"}}
        TextDB.insertTranslations {name: "mission_dialog1", text_content: "Organized as a result of a close collaboration between the students of the Bachelor program in the biopharmaceutical science field at the pharmacy faculty of Montreal University and the DESS department and superiors cycles of the same university, the colloquim aims to promote and instigate the discovery of the biopharmaceutical and pharmacology science programs, these being respectively provided within these institutes. After this event, students from these areas are called to exchange on the many aspects of drug development, from basic research to the marketing of therapeutic agents. In addition, lectures and interviews with many experts in industrial, clinical, academic and business fields are expected to inform young academics regarding innovative research topics, state some of pharmacy issues and explain the role and importance of the various facets of the latter."}, {fr: {text_content: "Organisé à la suite d’une étroite collaboration entre les étudiants du programme de baccalauréats en sciences biopharmaceutiques de la faculté de pharmacie de l'Université de Montréal, ainsi que le département du DESS et des cycles supérieurs de cette même université, le Pharmacolloque vise à promouvoir et instiguer à la découverte des programmes de baccalauréats en sciences biopharmaceutiques et en pharmacologie, ceux-ci étant respectivement offerts au sein de ces instituts. Au terme de cet évènement, les étudiants provenant de ces domaines sont appelés à tergiverser sur les multiples aspects du développement du médicament, soit de la recherche fondamentale jusqu’à la mise en marché d’agents thérapeutiques. De plus, conférences et entretiens avec de nombreux experts des champs industriels, cliniques, universitaires et commerciaux sont prévus afin d’informer la relève universitaire en ce qui concerne des sujets de recherche novateurs, en plus d’énoncer certains enjeux du domaine pharmaceutique et d’expliquer le rôle et l’importance des différentes facettes de ce dernier."}}

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
