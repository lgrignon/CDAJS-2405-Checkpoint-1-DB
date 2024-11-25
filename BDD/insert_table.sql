INSERT INTO recruiters (id, login, password) VALUES
(1, 'dbackson0', 'mO6(\\AWH_Yr'),
(2, 'bfoynes1', 'uI5(oh>hmS5nr'),
(3, 'bcrosetto2', 'rT9({/A3@8e'),
(4, 'hfeechum3', 'mM3>0xrtfrqKq'),
(5, 'lremer4', 'dX5(Vo4BGp'),
(6, 'achomley5', 'yW9?r<@U%s0Lu'),
(7, 'lattrill6', 'aN1)9KbB$KJdZ'),
(8, 'psayer7', 'gT3#\\\\hi4p`O0='),
(9, 'amugford8', 'uK7\U$j*tAw'),
(10, 'lbartholat9', 'bV1`TReX#Ig({5');

INSERT INTO candidates (id, login, password, first_name, last_name, email, presentation_text, phone_number) VALUES
(1, 'dbackson0', 'mO6(\\AWH_Yr', 'Deerdre', 'Backson', 'dbackson0@senate.gov', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', '054756498'),
(2, 'bfoynes1', 'uI5(oh>hmS5nr', 'Breena', 'Foynes', 'bfoynes1@booking.com', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', '05475640'),
(3, 'bcrosetto2', 'rT9({/A3@8e', 'Bary', 'Crosetto', 'bcrosetto2@simplemachines.org', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue.', '054756411'),
(4, 'hfeechum3', 'mM3>0xrtfrqKq', 'Hilda', 'Feechum', 'hfeechum3@flavors.me', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.', '0547564568'),
(5, 'lremer4', 'dX5(Vo4BGp', 'Lenore', 'Remer', 'lremer4@telegraph.co.uk', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '0547564687'),
(6, 'achomley5', 'yW9?r<@U%s0Lu', 'Arman', 'Chomley', 'achomley5@unblog.fr', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.', '054756468'),
(7, 'lattrill6', 'aN1)9KbB$KJdZ', 'Lesly', 'Attrill', 'lattrill6@house.gov', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.', '0547564987'),
(8, 'psayer7', 'gT3#\\\\hi4p`O0=', 'Pamelina', 'Sayer', 'psayer7@quantcast.com', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna.', '0547564647'),
(9, 'amugford8', 'uK7\$j*tAw', 'Armstrong', 'Mugford', 'amugford8@1688.com', 'Cum sociis natoque penatibus et magnis dis parturient montes.', '05475649647'),
(10, 'lbartholat9', 'bV1`TReX#Ig({5', 'Lock', 'Bartholat', 'lbartholat9@naver.com', 'Nulla ut erat id mauris vulputate elementum.', '054756444');

INSERT INTO companies (id, recruiter_id, name, description) VALUES
(1, 1, 'Flashspan', 'Morbi vel lectus in quam fringilla rhoncus.'),
(2, 2, 'Mycat', 'In blandit ultrices enim. Lorem ipsum dolor sit amet.'),
(3, 3, 'Devbug', 'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla.'),
(4, 4, 'Browseblab', 'Integer a nibh. In quis justo.'),
(5, 5, 'Kazu', 'Curabitur convallis.'),
(6, 6, 'Aivee', 'Pellentesque viverra pede ac diam.'),
(7, 7, 'Blognation', 'Phasellus in felis. Donec semper sapien a libero.'),
(8, 8, 'Youtags', 'Vivamus in felis eu sapien cursus vestibulum.'),
(9, 9, 'Npath', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod.'),
(10, 10, 'Kamba', 'Suspendisse potenti. In eleifend quam a odio.');

INSERT INTO job_offers (id, company_id, title, description, city) VALUES
(1, 1, 'Senior Editor', 'Description de l\'offre Senior Editor.', 'Rouen'),
(2, 2, 'Financial Analyst', 'Description de l\'offre Financial Analyst.', 'Jand'),
(3, 3, 'Senior Financial Analyst', 'Description de l\'offre Senior Financial Analyst.', 'Lalapanzi'),
(4, 4, 'Programmer IV', 'Description de l\'offre Programmer IV.', 'Plereyan'),
(5, 5, 'Web Designer III', 'Description de l\'offre Web Designer III.', 'Sandvika'),
(6, 6, 'Clinical Specialist', 'Description de l\'offre Clinical Specialist.', 'El Tejocote'),
(7, 7, 'Safety Technician III', 'Description de l\'offre Safety Technician III.', 'Catayauan'),
(8, 8, 'Health Coach I', 'Description de l\'offre Health Coach I.', 'Krajan Kidul Rojopolo'),
(9, 9, 'Data Coordinator', 'Description de l\'offre Data Coordinator.', 'Timrå'),
(10, 10, 'Information Systems Manager', 'Description de l\'offre Information Systems Manager.', 'Vyatskiye Polyany');

INSERT INTO applications (id, candidate_id, job_offer_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

