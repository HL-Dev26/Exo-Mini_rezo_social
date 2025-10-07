use mydatabase;

create table t_user(
user_id int,
user_name varchar(32) not null unique,
user_email varchar(128) not null unique,
primary key(user_id)
);

create table t_publication(
pub_id int auto_increment,
pub_date datetime,
pub_titre varchar(255),
pub_contenu text,
primary key(pub_id)
);

create table t_aimer(
user_id int,
pub_id int,
primary key(user_id, pub_id),
foreign key(user_id) references t_user(user_id),
foreign key(pub_id) references t_publication(pub_id)
);
