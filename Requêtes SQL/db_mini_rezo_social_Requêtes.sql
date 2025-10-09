/* 1-Sélectionner tous les utilisateurs (nom d’utilisateur + email).*/
select 
user_name, 
user_email 
from t_user;

/* 2-Sélectionner toutes les publications (titre, date, contenu, id utilisateur) triées par date de la plus récente à la plus ancienne.*/
select 
pub_titre, 
pub_date, 
pub_contenu, 
t_publication.user_id 
from t_publication
order by pub_date asc;

/* 3-Sélectionner les publications (pub_id, date, titre) de l’utilisateur N°2.*/
select
pub_id,
pub_date,
pub_titre
from t_publication
inner join t_user on t_user.user_id = t_publication.user_id
where t_user.user_id = 2;

/* 4-Sélectionner les publications (pub_id, titre, contenu) dont le titre contient la lettre “a”. Le résultat est trié par le titre et par ordre décroissant.*/
select 
pub_id, 
pub_titre
 from t_publication 
 where pub_titre 
 like '%a%' 
 order by pub_titre desc;
 
/* 5-Sélectionner les utilisateurs (id, nom, email) dont l’adresse email se termine par “com”.*/
select 
user_id,
user_name,
user_email
from t_user 
where user_email 
like '%.com';

/* 6-Sélectionner les publications triées par titre (ordre alphabétique) avec le nom d’utilisateur de l’auteur (nécessite une jointure).*/
select 
t_publication.pub_titre,
t_user.user_name
from t_publication
inner join t_user on t_user.user_id = t_publication.user_id
order by pub_titre asc;
 
