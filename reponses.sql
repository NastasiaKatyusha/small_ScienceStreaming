-- Exo 1 : afficher des lignes
select *
from contacts limit 10

select dateDebut
from planning limit 10;
/*
 * Réponses SQL
 */

--Exercice2
select count(*) nbr_de_lignes
from contacts c;

select count(*) nbr_de_lignes
from visionnages v;

select count(*) nbr_de_lignes
from planning p;
select count(*) nbr_de_lignes
from cours c;

-- utiliser union

select 'cours' nom,  -- ou 'cours' as nom 
count(*) nbr_de_lignes
from cours c 
union 
select 'visionnages', count(*) nbr_de_lignes
from visionnages v
union 
select 'contacts', count(*)
from cours

-- jointures

SELECT dateDebut, nomCours, profs.nom  
FROM planning 
LEFT JOIN cours ON planning.idCours = cours.idCours 
LEFT JOIN profs ON planning.idProf = profs.idProf

SELECT a.idContact, dateDebut, dateFin, prix
FROM contacts LEFT JOIN abonnements a ON contacts.idContact = a.idContact -- 10 179 lignes
-- vérifier nombre de lignes
-- SELECT COUNT(*) FROM contacts c;
