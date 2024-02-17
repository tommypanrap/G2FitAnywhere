-- 初始化資料庫
drop database if exists fitanywhere;

-- 重新建立資料庫
create database fitanywhere;

-- 選擇資料庫
use fitanywhere;

-- 心情狀態(mood)
create table mood(
    mood_id int primary key,
    mood_photo longblob 
    );
    insert into mood (mood_id,mood_photo) values(1,null);
    insert into mood (mood_id,mood_photo) values(2,null);
    insert into mood (mood_id,mood_photo) values(3,null);
	
-- 優惠活動(discount)
CREATE TABLE  discount(
    dc_id INT AUTO_INCREMENT PRIMARY KEY ,
    dc_start DATETIME,
    dc_end DATETIME,
    dc_project INT,
    dc_status INT
);
	INSERT INTO discount (dc_id, dc_start, dc_end, dc_project, dc_status)VALUES(1, '2023-05-01 00:00:00', '2023-05-10 23:59:59', 1, 1);
    INSERT INTO discount (dc_id, dc_start, dc_end, dc_project, dc_status)VALUES(2, '2023-06-15 00:00:00', '2023-06-25 23:59:59', 2, 1);
    INSERT INTO discount (dc_id, dc_start, dc_end, dc_project, dc_status)VALUES(3, '2023-07-20 00:00:00', '2023-07-31 23:59:59', 3, 1);

-- 用戶(user)
CREATE TABLE user (
    u_id INT AUTO_INCREMENT PRIMARY KEY,
    mood_id INT,
    FOREIGN KEY (mood_id) REFERENCES mood (mood_id),
    u_nickname VARCHAR(12),
    u_name VARCHAR(60),
    u_mail VARCHAR(50),
    u_password VARCHAR(255),
    u_phone VARCHAR(10),
    u_verified INT,
    u_coach INT,
    u_gender INT,
    u_headshot LONGBLOB,
    u_birth DATE,
    u_status INT,
    u_registerdate DATE,
    c_intro VARCHAR(120)
) AUTO_INCREMENT=10001;

--  User One/User Two/User Three的密碼都是"a123456" (因為密碼加密才入DB)
    insert into user(mood_id,u_nickname,u_name ,u_mail,u_password ,u_phone,u_verified,u_coach,u_gender,u_headshot,u_birth,u_status,c_intro)values( 1, 'user1_nick', 'User One', 'user1@example.com', '$2a$10$edAP3ONov1fDuPhP9BZbhOiVRqJQgmsCoVanmygq2ucVlBVISeDEO', '123456789', 1, 0, 1,NULL, '1998-05-15', 1, NULL);
    insert into user(mood_id,u_nickname,u_name ,u_mail,u_password ,u_phone,u_verified,u_coach,u_gender,u_headshot,u_birth,u_status,c_intro)values( 3, 'user2_nick', 'User Two', 'user2@example.com', '$2a$10$edAP3ONov1fDuPhP9BZbhOiVRqJQgmsCoVanmygq2ucVlBVISeDEO', '987654321', 1, 1, 0,NULL, '1993-08-20', 1, 'Certified Coach');
    insert into user(mood_id,u_nickname,u_name ,u_mail,u_password ,u_phone,u_verified,u_coach,u_gender,u_headshot,u_birth,u_status,c_intro)values( 2, 'user3_nick', 'User Three', 'user3@example.com','$2a$10$edAP3ONov1fDuPhP9BZbhOiVRqJQgmsCoVanmygq2ucVlBVISeDEO', '654321789', 0, 0, 0,NULL, '2000-02-10', 1, NULL);
    
-- 課程訂單(order)
CREATE TABLE `order`(
    od_id INT AUTO_INCREMENT PRIMARY KEY,
    od_create_date DATETIME DEFAULT NOW(),
    u_id INT,
    CONSTRAINT fk_order_u_id FOREIGN KEY (u_id) REFERENCES user(u_id),
    dc_id INT,
    CONSTRAINT fk_order_dc_id FOREIGN KEY (dc_id) REFERENCES discount(dc_id),
    od_end_date DATETIME ,
    od_status INT,
    od_price INT
);
	INSERT INTO `order` (od_id, od_create_date, u_id, od_end_date, od_status, od_price, dc_id)VALUES(1, '2023-08-01 10:00:00', 10001, '2023-08-02 15:30:00', 1, 50, 1);
	INSERT INTO `order` (od_id, od_create_date, u_id, od_end_date, od_status, od_price, dc_id)VALUES(2, '2023-08-03 12:30:00', 10002, '2023-08-04 18:45:00', 1, 70, 2);
	INSERT INTO `order` (od_id, od_create_date, u_id, od_end_date, od_status, od_price, dc_id)VALUES(3, '2023-08-05 14:45:00', 10003, '2023-08-06 20:00:00', 1, 90, 3);

    
-- 課程(course)
create table course(
    cr_id int AUTO_INCREMENT primary key,
    u_id int,
    foreign key (u_id) references user (u_id),
    cr_class varchar(20),
    cr_state int,
    cr_title varchar(50),
    cr_subtitle varchar(50),
    cr_intro LONGTEXT,
    cr_cover longblob,
	cr_price int,
	cr_create_date datetime,
	cr_edit_date datetime,
	cr_cm_quan int,
	cr_tot_star int,
	cr_purpose_1 VARCHAR(50),
	cr_purpose_2 VARCHAR(50),
    cr_purpose_3 VARCHAR(50),
    cr_pre VARCHAR(50),
    cr_target_1 VARCHAR(50),
    cr_hello_msg LONGTEXT,
    cr_cong LONGTEXT,
    cr_level VARCHAR(10)
    );
    
    insert into course(u_id,cr_class ,cr_state ,cr_title ,cr_subtitle ,cr_intro ,cr_cover ,cr_price ,cr_create_date ,cr_edit_date ,cr_cm_quan ,cr_tot_star ,cr_purpose_1 ,cr_purpose_2 ,cr_purpose_3 ,cr_pre,cr_target_1 ,cr_hello_msg ,cr_cong ,cr_level )values(10001, '健身', 1, '三十天快速減肥', 'Introduction to Programming', 'This course covers the basics of programming.', NULL, 29, '2023-01-01 08:00:00', '2023-01-10 12:30:00', 50, 4, 'Learn Programming', 'Build Web Apps', 'Data Analysis', NULL, 'Beginners', NULL, NULL, 'Normal');
    insert into course(u_id,cr_class ,cr_state ,cr_title ,cr_subtitle ,cr_intro ,cr_cover ,cr_price ,cr_create_date ,cr_edit_date ,cr_cm_quan ,cr_tot_star ,cr_purpose_1 ,cr_purpose_2 ,cr_purpose_3 ,cr_pre,cr_target_1 ,cr_hello_msg ,cr_cong ,cr_level )values(10002, '有氧', 1, '有氧八週', 'Graphic Design Fundamentals', 'Explore the world of graphic design with hands-on projects.', NULL, 49, '2023-02-15 10:30:00', '2023-02-28 15:45:00', 30, 5, 'Learn Graphic Design', 'Create Stunning Logos', 'Illustration Techniques', NULL, 'Design Enthusiasts', NULL, NULL, 'Normal');
    insert into course(u_id,cr_class ,cr_state ,cr_title ,cr_subtitle ,cr_intro ,cr_cover ,cr_price ,cr_create_date ,cr_edit_date ,cr_cm_quan ,cr_tot_star ,cr_purpose_1 ,cr_purpose_2 ,cr_purpose_3 ,cr_pre,cr_target_1 ,cr_hello_msg ,cr_cong ,cr_level )values(10003, '減脂', 1, '魔鬼減脂肪', 'Healthy Cooking Essentials', 'Learn to cook delicious and healthy meals for yourself and your loved ones.', NULL, 39, '2023-03-20 09:15:00', '2023-03-31 14:00:00', 25, 4, 'Healthy Cooking', 'Nutrition Essentials', 'Meal Planning', 'Basic Cooking Skills', 'Health Enthusiasts', NULL, NULL, 'Beginner');
    
-- 用戶收藏課程清單(user_collect_list)
CREATE TABLE user_collect_list (
	PRIMARY KEY (cr_id, u_id),
    cr_id INT ,
    CONSTRAINT fk_user_collect_list_cr_id FOREIGN KEY (cr_id) REFERENCES course(cr_id),
    u_id INT ,
    CONSTRAINT fk_user_collect_list_u_id FOREIGN KEY (u_id) REFERENCES user(u_id),
    collect_status INT
);
	INSERT INTO user_collect_list(cr_id, u_id, collect_status)VALUES(1, 10001, 1);
	INSERT INTO user_collect_list(cr_id, u_id, collect_status)VALUES(2, 10002, 1);
	INSERT INTO user_collect_list(cr_id, u_id, collect_status)VALUES(3, 10003, 0);
    
-- 用戶瀏覽課程清單(user_view_list)
CREATE TABLE user_view_list (
    PRIMARY KEY (cr_id, u_id),
    cr_id INT AUTO_INCREMENT,
    CONSTRAINT fk_user_view_list_cr_id FOREIGN KEY (cr_id) REFERENCES course(cr_id),
    u_id INT,
     CONSTRAINT fk_user_view_list_u_id FOREIGN KEY (u_id) REFERENCES user(u_id),
    view_status INT
    );
	INSERT INTO user_view_list(cr_id, u_id, view_status)VALUES(1, 10001, 1);
    INSERT INTO user_view_list(cr_id, u_id, view_status)VALUES(2, 10002, 1);
    INSERT INTO user_view_list(cr_id, u_id, view_status)VALUES(3, 10003, 0);

-- 訂單明細(detail)
CREATE TABLE detail(
    de_id INT AUTO_INCREMENT PRIMARY KEY,
    u_id INT ,
    CONSTRAINT fk_detail_u_id FOREIGN KEY (u_id) REFERENCES user(u_id),
    cr_id INT,
    CONSTRAINT fk_detail_cr_id FOREIGN KEY (cr_id) REFERENCES course(cr_id),
    od_id INT,
    CONSTRAINT fk_detail_or_id FOREIGN KEY (od_id) REFERENCES `order`(od_id),
    cd_price INT,
    cd_gift INT,
    cd_gift_status INT,
    cd_gift_remark VARCHAR(50)
); 
	INSERT INTO detail(u_id, cr_id, od_id, cd_price, cd_gift, cd_gift_status, cd_gift_remark)VALUES(10001, 1, 1, 0, 0, NULL, 1);
    INSERT INTO detail(u_id, cr_id, od_id, cd_price, cd_gift, cd_gift_status, cd_gift_remark)VALUES(10002, 2, 2, 1, 1, 1, 2);
    INSERT INTO detail(u_id, cr_id, od_id, cd_price, cd_gift, cd_gift_status, cd_gift_remark)VALUES(10003, 3, 3, 0, 0, NULL, 3);

-- 課程詳細資料(course_detail)
CREATE TABLE course_detail (
    cd_id INT PRIMARY KEY,
    cr_id INT,
    cd_video LONGBLOB,
    cd_sale_video LONGBLOB,
    cd_url VARCHAR(255),
    cd_pdf LONGBLOB,
    CONSTRAINT fk_course_detail FOREIGN KEY (cr_id) REFERENCES course(cr_id)
);
	INSERT INTO course_detail (cd_id, cr_id, cd_video, cd_sale_video, cd_url, cd_pdf)VALUES(1, 1, NULL, NULL, 'https://example.com/video1', NULL);
    INSERT INTO course_detail (cd_id, cr_id, cd_video, cd_sale_video, cd_url, cd_pdf)VALUES(2, 2, '0x4578697374696e67', NULL, 'https://example.com/video2', NULL);
    INSERT INTO course_detail (cd_id, cr_id, cd_video, cd_sale_video, cd_url, cd_pdf)VALUES(3, 3, '0x57656c636f6d6520746f20436f75727365', '0x53616c6520766964656f', 'https://example.com/video3', '0x5064662066696c6520666f72206c6174657220737461727473');

-- 最新消息(news)
create table news(
	news_id int primary key,
    news varchar(50),
    news_content longtext,
    news_date datetime
);
	INSERT INTO news (news_id, news, news_content, news_date)VALUES(1, 'Important Announcement', 'We are pleased to announce a major update to our platform.', '2023-04-01 10:00:00');
    INSERT INTO news (news_id, news, news_content, news_date)VALUES(2, 'Upcoming Event', 'Join us for an exciting event on the latest industry trends.', '2023-04-05 15:30:00');
    INSERT INTO news (news_id, news, news_content, news_date)VALUES(3, 'Maintenance Notice', 'Scheduled maintenance will take place on April 10th. Expect temporary service interruptions.', '2023-04-08 08:45:00');

-- 管理員(administrator)
create table administrator(
 	am_id int,
 	am_name varchar(60),
    am_password int(255),
    am_level int
	)AUTO_INCREMENT=101;
 	insert into administrator (am_name , am_password ,am_level)values('andy', 111 ,1);
    insert into administrator (am_name , am_password ,am_level)values('tommy',111 ,1);
    insert into administrator (am_name , am_password ,am_level)values('joy', 111 ,1);
    
-- 廣告方案(ad)
CREATE TABLE ad (
    ad_id INT auto_increment PRIMARY KEY,
    ad_name VARCHAR(50),
    ad_vaild_date DATETIME,
    ad_day_price int
); 
	INSERT INTO ad(ad_name, ad_vaild_date, ad_day_price)VALUES('Standard Plan', '2023-01-01', 100);
    INSERT INTO ad(ad_name, ad_vaild_date, ad_day_price)VALUES('Premium Plan', '2023-02-15', 150);
    INSERT INTO ad(ad_name, ad_vaild_date, ad_day_price)VALUES('Basic Plan', '2023-03-20', 80);

-- 廣告時間(ad_date)
CREATE TABLE ad_date (
    ad_date_id INT auto_increment PRIMARY KEY,
    ad_date_interval DATE,
    ad_id int,
    CONSTRAINT fk_ad_date FOREIGN KEY (ad_id) REFERENCES ad(ad_id)
); 
	INSERT INTO ad_date(ad_date_interval, ad_id)VALUES('2023-01-01', 1);
    INSERT INTO ad_date(ad_date_interval, ad_id)VALUES('2023-02-15', 2);
    INSERT INTO ad_date(ad_date_interval, ad_id)VALUES('2023-03-20', 3);

-- 廣告訂單-輪播(ad_carousel_order)
CREATE TABLE ad_carousel_order (
    adc_id INT auto_increment PRIMARY KEY,
    ad_id int,
    CONSTRAINT fk_ad_carousel_order_ad_id FOREIGN KEY (ad_id) REFERENCES ad(ad_id),
    u_id int,
    CONSTRAINT fk_ad_carousel_order_u_id FOREIGN KEY (u_id) REFERENCES user(u_id),
    cr_id int,
    CONSTRAINT fk_ad_carousel_order_cr_id FOREIGN KEY (cr_id) REFERENCES course(cr_id),
    adc_start_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    adc_end_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    adc_total_price INT,
    adc_update_pic LONGBLOB,
    adc_status INT,
    adc_order_enddate DATETIME DEFAULT CURRENT_TIMESTAMP
);
	INSERT INTO ad_carousel_order(ad_id, u_id, cr_id, adc_start_date, adc_end_date, adc_total_price, adc_update_pic, adc_status, adc_order_enddate)VALUES(1, 10001, 1, '2023-01-01 08:00:00', '2023-01-10 12:30:00', 500, NULL, 1, '2023-01-15 10:00:00');
    INSERT INTO ad_carousel_order(ad_id, u_id, cr_id, adc_start_date, adc_end_date, adc_total_price, adc_update_pic, adc_status, adc_order_enddate)VALUES(2, 10002, 1, '2023-02-15 10:30:00', '2023-02-28 15:45:00', 700, NULL, 1, '2023-03-05 14:30:00');
    INSERT INTO ad_carousel_order(ad_id, u_id, cr_id, adc_start_date, adc_end_date, adc_total_price, adc_update_pic, adc_status, adc_order_enddate)VALUES(3, 10003, 1, '2023-03-20 09:15:00', '2023-03-31 14:00:00', 600, NULL, 1, '2023-04-02 11:45:00');

-- 廣到訂單-首頁推薦(ad_recommand_order)
create table ad_recommand_order(
	adr_id int primary key auto_increment,
    u_id int,
    foreign key (u_id) references course (u_id),
    ad_id int,
    foreign key (ad_id) references ad (ad_id),
    cr_id int,
    foreign key (cr_id) references course (cr_id),
    adr_start_date datetime,
    adr_end_date datetime,
    adr_total_price int,
    adr_status int,
    adr_order_enddate datetime);
	INSERT INTO ad_recommand_order(u_id, ad_id, cr_id, adr_start_date, adr_end_date, adr_total_price, adr_status, adr_order_enddate)VALUES(10001, 1, 1, '2023-01-01 08:00:00', '2023-01-10 12:30:00', 800, 1, '2023-01-15 10:00:00');
    INSERT INTO ad_recommand_order(u_id, ad_id, cr_id, adr_start_date, adr_end_date, adr_total_price, adr_status, adr_order_enddate)VALUES(10002, 2, 2, '2023-02-15 10:30:00', '2023-02-28 15:45:00', 1000, 1, '2023-03-05 14:30:00');
    INSERT INTO ad_recommand_order(u_id, ad_id, cr_id, adr_start_date, adr_end_date, adr_total_price, adr_status, adr_order_enddate)VALUES(10003, 3, 3, '2023-03-20 09:15:00', '2023-03-31 14:00:00', 900, 1, '2023-04-02 11:45:00');

-- 社群貼文(social_post)
CREATE TABLE social_post(
	sp_id int NOT NULL AUTO_INCREMENT,
	u_id int DEFAULT NULL,
	sp_category varchar(20) DEFAULT NULL,
	sp_time datetime DEFAULT NULL,
	sp_updated datetime DEFAULT NULL,
	sp_status int DEFAULT NULL,
	sp_title varchar(50) DEFAULT NULL,
	sp_content longtext,
	sp_pic longblob,
	PRIMARY KEY (sp_id),
	KEY u_id (u_id),
	CONSTRAINT social_post_ibfk_1 FOREIGN KEY (u_id) REFERENCES user (u_id));
	INSERT INTO social_post(sp_id, u_id, sp_category, sp_time, sp_status, sp_updated, sp_content, sp_title, sp_pic)VALUES(1,10001, '心情', '2023-01-01 10:00:00', 1, '2023-01-01 10:00:00', 'This is the content of the first post.', 'Post Title 1', null);
    INSERT INTO social_post(sp_id, u_id, sp_category, sp_time, sp_status, sp_updated, sp_content, sp_title, sp_pic)VALUES(2,10002, '日記', '2023-02-15 12:30:00', 1, '2023-02-15 12:30:00', 'Second post content goes here.', 'Another Title 2', null);
    INSERT INTO social_post(sp_id, u_id, sp_category, sp_time, sp_status, sp_updated, sp_content, sp_title, sp_pic)VALUES(3,10003, '抒發', '2023-03-20 15:45:00', 1, '2023-03-20 15:45:00', 'Content of the third post is written here.', 'Title for Post 3', null);

-- 社群回文(social_reply)
CREATE TABLE social_reply (
    sr_id INT PRIMARY KEY,
    u_id INT,
    sp_id INT,
    sr_time DATETIME,
    sr_update DATETIME,
    sr_status INT,
    sr_content LONGTEXT,
    FOREIGN KEY (u_id) REFERENCES user(u_id), -- 替换为实际的用户表和列名
    FOREIGN KEY (sp_id) REFERENCES social_post(sp_id)  -- 替换为实际的社交帖子表和列名
);
	INSERT INTO social_reply (sr_id, u_id, sp_id, sr_time, sr_update, sr_status, sr_content)VALUES(1, 10001, 1, '2023-01-02 11:30:00', '2023-01-02 11:30:00', 1, 'Comment content for the first post.');
    INSERT INTO social_reply (sr_id, u_id, sp_id, sr_time, sr_update, sr_status, sr_content)VALUES(2, 10001, 1, '2023-01-02 11:30:00', '2023-01-02 11:30:00', 1, 'Comment content for the first post.');
	INSERT INTO social_reply (sr_id, u_id, sp_id, sr_time, sr_update, sr_status, sr_content)VALUES(3, 10001, 1, '2023-01-02 11:30:00', '2023-01-02 11:30:00', 1, 'Comment content for the first post.');
    
-- 意見回饋(opinion)
CREATE TABLE opinion (
    op_id INT PRIMARY KEY,
    u_id INT,
    op_title VARCHAR(150),
    op_content LONGTEXT,
    op_send_time DATETIME,
    op_reply_content LONGTEXT,
    op_reply_time DATETIME,
    op_status INT,
    FOREIGN KEY (u_id) REFERENCES user(u_id) -- 替换为实际的用户表和列名
);
 	INSERT INTO opinion (op_id, u_id, op_title, op_content, op_send_time, op_reply_content, op_reply_time, op_status)VALUES(1, 10001, 'Feedback on App Features', 'I really like the app, but it would be great if we could have more features for tracking fitness progress.', '2023-01-05 09:45:00', 'Thank you for your feedback! We appreciate your suggestion and will consider it for future updates.', '2023-01-06 10:30:00', 1);
    INSERT INTO opinion (op_id, u_id, op_title, op_content, op_send_time, op_reply_content, op_reply_time, op_status)VALUES(2, 10002, 'Bug Report', 'Encountered a bug when trying to log in. The error message says "Invalid credentials," but I am sure I am using the correct username and password.', '2023-02-20 15:20:00', 'We apologize for the inconvenience. Our team is investigating the issue and will provide a fix as soon as possible.', '2023-02-21 11:15:00', 1);
	INSERT INTO opinion (op_id, u_id, op_title, op_content, op_send_time, op_reply_content, op_reply_time, op_status)VALUES(3, 10003, 'App Improvement', 'The app is fantastic, but it would be even better with a dark mode. Many users prefer dark themes for better readability at night.', '2023-03-25 13:10:00', 'Thank you for your suggestion! Weve added it to our feature requests list and will explore the possibility of implementing dark mode in future updates.', '2023-03-26 09:55:00', 1);

-- 訂閱table(subscribe)
CREATE TABLE subscribe (
    su_id INT AUTO_INCREMENT PRIMARY KEY,
    CONSTRAINT fk_subscribe_u_id FOREIGN KEY (u_id) REFERENCES user(u_id),
    CONSTRAINT fk_subscribe_coach_id FOREIGN KEY (coach_id) REFERENCES user(u_id),
    u_id INT,
    coach_id INT,
    sub_status INT
);
	INSERT INTO subscribe(u_id, coach_id, sub_status)VALUES(10001, 10002, 1);
    INSERT INTO subscribe(u_id, coach_id, sub_status)VALUES(10002, 10001, 1);
    INSERT INTO subscribe(u_id, coach_id, sub_status)VALUES(10003, 10001, 1);

-- 討論區貼文(forum_post)
CREATE TABLE forum_post (
    fp_id INT AUTO_INCREMENT PRIMARY KEY,
    CONSTRAINT fk_forum_post_u_id FOREIGN KEY (u_id) REFERENCES user(u_id),
    u_id INT,
    fp_category VARCHAR(20),
    fp_title VARCHAR(50),
    fp_content LONGTEXT,
    fp_time DATETIME,
    fp_status INT,
    fp_update DATETIME,
    fp_pic longblob
);
	INSERT INTO forum_post (u_id, fp_category, fp_title, fp_content, fp_time, fp_status, fp_update, fp_pic)VALUES(10001, '健康', 'Introduction to Programming', 'This is a post about programming basics.', '2023-01-05 09:30:00', 1, '2023-01-06 14:45:00', null);
    INSERT INTO forum_post (u_id, fp_category, fp_title, fp_content, fp_time, fp_status, fp_update, fp_pic)VALUES(10002, '詢問', 'Graphic Design Tips', 'Sharing tips and tricks for graphic design enthusiasts.', '2023-02-10 11:15:00', 1, '2023-02-12 16:20:00', null);
    INSERT INTO forum_post (u_id, fp_category, fp_title, fp_content, fp_time, fp_status, fp_update, fp_pic)VALUES(10003, '分享', 'Healthy Cooking Recipes', 'Discover and share healthy cooking recipes.', '2023-03-18 08:45:00', 1, '2023-03-20 12:55:00', null);

-- 討論區回文table(forum_reply)
CREATE TABLE forum_reply (
    fr_id INT AUTO_INCREMENT PRIMARY KEY,
    CONSTRAINT fk_forum_reply_u_id FOREIGN KEY (u_id) REFERENCES user(u_id),
    CONSTRAINT fk_forum_reply_fp_id FOREIGN KEY (fp_id) REFERENCES forum_post(fp_id),
    u_id INT,
    fp_id INT,
    fr_content VARCHAR(300),
    fr_time DATETIME,
    fr_status INT,
    fr_updated DATETIME
); 
	INSERT INTO forum_reply (u_id, fp_id, fr_content, fr_time, fr_status, fr_updated)VALUES(10001, 1, 'Great post! I learned a lot from it.', '2023-01-07 10:00:00', 1, '2023-01-08 12:30:00');
    INSERT INTO forum_reply (u_id, fp_id, fr_content, fr_time, fr_status, fr_updated)VALUES(10002, 2, 'Thanks for sharing these design tips!', '2023-02-12 17:00:00', 1, '2023-02-14 09:45:00');
    INSERT INTO forum_reply (u_id, fp_id, fr_content, fr_time, fr_status, fr_updated)VALUES(10003, 3, 'I tried one of the recipes, and it was delicious!', '2023-03-20 14:30:00', 1, '2023-03-21 11:20:00');

-- 課程公告(announcement)
CREATE TABLE announcement (
    an_id INT AUTO_INCREMENT PRIMARY KEY,
    cr_id INT,
    an_date DATETIME,
    an_edit_date DATETIME,
    an_title VARCHAR(50),
    an_content LONGTEXT,
    CONSTRAINT fk_cr_id FOREIGN KEY (cr_id) REFERENCES course(cr_id)
);
	INSERT INTO announcement (cr_id, an_date, an_edit_date, an_title, an_content)VALUES(1, '2023-01-10 09:30:00', '2023-01-10 09:30:00', 'Welcome to the Programming Course!', 'We are excited to have you in our programming course. Get ready to embark on a journey of learning and coding.');
    INSERT INTO announcement (cr_id, an_date, an_edit_date, an_title, an_content)VALUES(2, '2023-02-20 14:15:00', '2023-02-20 14:15:00', 'Important Design Workshop Announcement', 'Don''t miss our upcoming design workshop. It''s a great opportunity to enhance your graphic design skills.');
    INSERT INTO announcement (cr_id, an_date, an_edit_date, an_title, an_content)VALUES(3, '2023-03-25 11:45:00', '2023-03-25 11:45:00', 'Healthy Cooking Tips and Recipes', 'Join us for a special session on healthy cooking. Learn valuable tips and discover delicious recipes to support your well-being.');
    
-- 課程QA(course_qa)
CREATE TABLE course_qa (
    qa_id INT AUTO_INCREMENT PRIMARY KEY,
    qa_status INT,
    qa_title VARCHAR(50),
    u_id INT,
    qa_date DATETIME,
    qa_photo LONGBLOB,
    cr_id INT,
    CONSTRAINT fk_course_qa_u_id FOREIGN KEY (u_id) REFERENCES user(u_id),
    CONSTRAINT fk_course_qa_cr_id FOREIGN KEY (cr_id) REFERENCES course(cr_id)
);
	INSERT INTO course_qa(qa_status, qa_title, u_id, qa_date, qa_photo, cr_id)VALUES(1, 'Understanding Programming Concepts', 10001, '2023-01-15 10:00:00', NULL, 1);
    INSERT INTO course_qa(qa_status, qa_title, u_id, qa_date, qa_photo, cr_id)VALUES(1, 'Graphic Design Workshop Inquiry', 10002, '2023-02-25 15:30:00', NULL, 2);
    INSERT INTO course_qa(qa_status, qa_title, u_id, qa_date, qa_photo, cr_id)VALUES(1, 'Healthy Cooking Class Question', 10003, '2023-03-30 11:00:00', NULL, 3);
    
-- QA回覆(reply_content)
CREATE TABLE reply_content (
    qr_id INT AUTO_INCREMENT PRIMARY KEY,
    u_id INT,
    CONSTRAINT fk_reply_conten_u_id FOREIGN KEY (u_id) REFERENCES user(u_id),
    rc_content LONGTEXT,
    rc_date DATETIME,
    qa_id INT,
    CONSTRAINT fk_reply_content_qa_id FOREIGN KEY (qa_id) REFERENCES course_qa(qa_id),
    rc_status INT
);
	INSERT INTO reply_content (u_id, rc_content, rc_date, qa_id, rc_status)VALUES(10001, 'Programming concepts can be challenging at first, but with practice, you will become more comfortable.', '2023-01-16 12:15:00', 1, 1);
    INSERT INTO reply_content (u_id, rc_content, rc_date, qa_id, rc_status)VALUES(10002, 'In the Graphic Design Workshop, we cover various design principles and hands-on projects. Feel free to ask any specific questions you may have!', '2023-02-26 16:45:00', 2, 1);
    INSERT INTO reply_content (u_id, rc_content, rc_date, qa_id, rc_status)VALUES(10003, 'For the Healthy Cooking Class, we focus on nutritious recipes and cooking techniques. Let me know if you have any dietary preferences or specific topics you want to cover.', '2023-03-31 12:30:00', 3, 1);

-- 評論(comment)
CREATE TABLE comment (
    cm_id INT AUTO_INCREMENT PRIMARY KEY,
    cr_id INT,
    cm_content LONGTEXT,
    cm_date DATETIME,
    cm_star INT,
    cm_status INT,
    u_id INT,
    CONSTRAINT fk_comment_cr_id FOREIGN KEY (cr_id) REFERENCES course(cr_id),
    CONSTRAINT fk_comment_u_id FOREIGN KEY (u_id) REFERENCES user(u_id));
    insert into comment(cr_id, cm_content, cm_date, cm_star, cm_status, u_id)values(1,'123','2024-01-10 09:30:00',5,2,10001);
    insert into comment(cr_id, cm_content, cm_date, cm_star, cm_status, u_id)values(2,'2333','2022-01-10 09:30:00',6,2,10002);
    insert into comment(cr_id, cm_content, cm_date, cm_star, cm_status, u_id)values(3,'434','2025-01-10 09:30:00',6,2,10003);