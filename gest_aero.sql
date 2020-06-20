create database gest_aero
go
use gest_aero
go

create table client(
	num_cl			int				primary key identity(1,1),
	nom_cl			nchar(20),
	prenom_cl		nchar(20),
	email_cl		nchar(50),
	mdp_cl			nchar(20)
);

create table utilisateur(
	num_user		int				primary key identity(1,1),
	nom_user		nchar(20),
	prenom_user		nchar(20),
	tel_user		nchar(20),
	email_user		nchar(50),
	mdp_user		nchar(20),
	role_user		nchar(20),
);

create table pilote(
	num_pil			int				primary key identity(1,1),
	nom_pil			nchar(20),
	prenom_pil		nchar(20),
	tel_pil			nchar(20),
	email_pil		nchar(50),
);

create table avion(
	num_av			int				primary key identity(1,1),
	modele_av		nchar(20),
	capacite_av		int,
	nbr_h_travail	int
);

create table aeroport(
	num_aero		int				primary key identity(1,1),
	nom_aero		nchar(20)
);

create table passager(
	num_passport	nchar(20)		primary key,
	nom_psg			nchar(20),
	prenom_psg		nchar(20),
	tel_psg			nchar(20),
	date_naiss_psg	datetime
);


create table ligne(
	num_l			int				primary key identity(1,1)
);

create table vol(
	num_v			int			primary key identity(1,1),
	aeroport_d		int			references aeroport(num_aero),
	aeroport_a		int			references aeroport(num_aero),
	num_pil			int			references pilote(num_pil),
	num_av			int			references avion(num_av),
	date_d			datetime,
	date_a			datetime
);

create table vol_de_ligne(
	num_l			int			references ligne(num_l),
	num_v			int			references vol(num_v),
	primary key (num_l,num_v)
);

create table reservation(
	num_resa		int			primary key identity(1,1),
	date_resa		datetime,
	num_cl			int			references client(num_cl),
	num_user		int			references utilisateur(num_user),
	num_v			int			references vol(num_v)
);

create table billet(
	num_place				int		primary key identity(1,1),
	classe_siege			nchar(20),
	num_resa				int		references reservation(num_resa),
	num_passport_psg		nchar(20)		references passager(num_passport)
);