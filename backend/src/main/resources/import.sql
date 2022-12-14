INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('BootCamp HTML', 'https://campustechnology.com/-/media/EDU/CampusTechnology/2019-Images/20191209online.jpg','https://img.myloview.com.br/fotomurais/online-course-icon-outline-online-course-vector-icon-for-web-design-isolated-on-white-background-700-231540222.jpg');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0',TIMESTAMP WITH TIME ZONE '2020-07-13T03:00:00',TIMESTAMP WITH TIME ZONE '2021-11-13T03:00:00',1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0',TIMESTAMP WITH TIME ZONE '2020-07-13T03:00:00',TIMESTAMP WITH TIME ZONE '2021-12-13T03:00:00',1);

INSERT INTO tb_resource (title, description, position, img_Uri,type, offer_id) VALUES ('Trilha HTML', 'Trilha Principal', 1,'https://campustechnology.com/-/media/EDU/CampusTechnology/2019-Images/20191209online.jpg',1,1);
INSERT INTO tb_resource (title, description, position, img_Uri,type, offer_id) VALUES ('FORUM', 'DUVIDAS', 2,'https://campustechnology.com/-/media/EDU/CampusTechnology/2019-Images/20191209online.jpg',2,1);
INSERT INTO tb_resource (title, description, position, img_Uri,type, offer_id) VALUES ('LIVES', 'LIVES BONUS', 3,'https://campustechnology.com/-/media/EDU/CampusTechnology/2019-Images/20191209online.jpg',0,1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('CAP 01', 'CAPITULO 1 NOVO', 1, 'https://campustechnology.com/-/media/EDU/CampusTechnology/2019-Images/20191209online.jpg', 1,null );
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('CAP 02', 'CAPITULO 2 NOVO', 2, 'https://campustechnology.com/-/media/EDU/CampusTechnology/2019-Images/20191209online.jpg', 1,1 );
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('CAP 03', 'CAPITULO 3 NOVO', 3, 'https://campustechnology.com/-/media/EDU/CampusTechnology/2019-Images/20191209online.jpg', 1,2 );

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1,1,TIMESTAMP WITH TIME ZONE '2020-07-13T13:00:00',NULL, TRUE, FALSE);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2,1,TIMESTAMP WITH TIME ZONE '2020-07-13T13:00:00',NULL, TRUE, FALSE);

INSERT INTO tb_lesson (title, position, section_id)  VALUES ('Aula 1', 1, 1);
INSERT INTO tb_content (id,text_Content, video_Uri)  VALUES (1,'Material de Apoio', 'https://www.youtube.com/watch?v=0_e9Egeyk2E');

INSERT INTO tb_lesson (title, position, section_id)  VALUES ('Aula 2', 2, 1);
INSERT INTO tb_content (id,text_Content, video_Uri)  VALUES (2,'', 'https://www.youtube.com/watch?v=0_e9Egeyk2E');

INSERT INTO tb_lesson (title, position, section_id)  VALUES ('Aula 3', 3, 1);
INSERT INTO tb_content (id,text_Content, video_Uri)  VALUES (3,'', 'https://www.youtube.com/watch?v=0_e9Egeyk2E');

INSERT INTO tb_lesson (title, position, section_id)  VALUES ('Tarefa Capitulo', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date)  VALUES (4,'Desafio Trabalho', 5,4,1.0,TIMESTAMP WITH TIME ZONE '2020-07-25T13:00:00');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Segundo feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Terceiro feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES ('https://github.com/devsuperior/bds-dslearn', TIMESTAMP WITH TIME ZONE '2020-12-10T10:00:00Z', 0, null, null, 4, 1, 1);

INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('T??tulo do t??pico 1', 'Corpo do t??pico 1', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 1, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('T??tulo do t??pico 2', 'Corpo do t??pico 2', TIMESTAMP WITH TIME ZONE '2020-12-13T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('T??tulo do t??pico 3', 'Corpo do t??pico 3', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('T??tulo do t??pico 4', 'Corpo do t??pico 4', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('T??tulo do t??pico 5', 'Corpo do t??pico 5', TIMESTAMP WITH TIME ZONE '2020-12-16T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('T??tulo do t??pico 6', 'Corpo do t??pico 6', TIMESTAMP WITH TIME ZONE '2020-12-17T13:00:00Z', 2, 1, 3);

INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);

INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Tente reiniciar o computador', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 2);
INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Deu certo, valeu!', TIMESTAMP WITH TIME ZONE '2020-12-20T13:00:00Z', 1, 1);

INSERT INTO tb_reply_likes (reply_id, user_id) VALUES (1, 1);