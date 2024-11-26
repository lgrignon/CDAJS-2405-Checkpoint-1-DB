
-- Ajout des recruteurs
INSERT INTO recruiters (recruiter_id, login, password) 
VALUES (1,Anders,eS1!UcQY*qi),
(2,Edd,iG1/|N4AJ~p),
(3,Justino,hA4=*XAy+d\_@o7),
(4,Marya,lK1*VoqiYfFEb),
(5,Etty,aY5#AxRZlua3$IV);


-- Ajout des entreprises 

INSERT INTO companies (company_id, recruiter_id, name, description)
VALUES (1,1,Jermain,"Displ seg fx shaft of r femur, subs for clos fx w delay heal"),
(2,2,Kalie,"Disp fx of r ulna styloid pro, 7thH"),
(3,3,Kellen,"Toxic effect of unsp substance, undetermined, init encntr"),
(4,4,Corri,"Disp fx of 1st metatarsal bone, l ft, 7thG"),
(5,5,Letta,"Corrosion of first degree of left ear");

-- Ajout des offres 

INSERT INTO offers (offer_id, company_id, job_title, description, city)
VALUES (1,1,Accountant IV,"Oth intraop cardiac functional disturb during oth surgery,Sanghan", New York),
(2,2,Sales Representative,"Malingerer conscious simulation",Porto-Novo),
(3,3,Staff Scientist,"Hyphema, unspecified eye",Paris),
(4,4,Associate Professor,"Contus/lac right cerebrum w LOC of 1-5 hrs 59 min, sequela",Penalva),
(5,5,Structural Analysis Engineer,"Puncture wound with foreign body, right thigh, subs encntr",Berlin);

-- Ajout des candidats

INSERT INTO candidates (candidate_id, login, password, name, firstname, email, phone_number, presentation)
VALUES (1,Raye,sC2&B\ZiR*=dIm_,Treslove,Herculie,htreslove0@mozilla.com,208-716-1266,Bipol I cur mixed remiss),
(2,Walton,uY9Jkg=p9,Derricoat,Ronald,rderricoat1@miitbeian.gov.cn,812-453-2862,TB of organ NEC-unspec),
(3,Orsola,yK4\4I$CoRUb,Hadden,Emmalee,ehadden2@multiply.com,498-880-5369,Opioid abuse-unspec),
(4,Dionne,hG0>h/SLA,Cancellario,Parke,pcancellario3@altervista.org,311-476-4483,GI mucositis ulceratve),
(5,Gizela,yU4|xImu,MacMorland,Henrietta,hmacmorland4@canalblog.com,533-627-3115,Intes infec astrovirus);

-- Ajout des candidatures

INSERT INTO applications (application_id, candidate_id, offer_id, application_date)
VALUES (1,1,1,10/7/2024),
(2,2,2,8/30/2024),
(3,3,3,2/5/2024),
(4,4,4,9/9/2024),
(5,5,5,10/17/2024);