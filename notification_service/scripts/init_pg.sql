INSERT INTO users_user (password, is_superuser, username, first_name, last_name, email,
    is_staff, is_active, date_joined, id)
VALUES ('pbkdf2_sha256$870000$aSeGcuMSk5XECInrhNZqCU$XKpr1jk2AD+SXbCPUDjjxv420v8/tPDumLiJOj4odiw=',
    false, 'test_user_1', 'Alex', 'Bolduin', 'test@test.ru', false, true, '2024-10-02 00:00:00',
    '27823ab2-25aa-42fd-a2cc-be68ce386ba6')
ON CONFLICT DO NOTHING;

INSERT INTO users_user (password, is_superuser, username, first_name, last_name, email,
    is_staff, is_active, date_joined, id)
VALUES ('pbkdf2_sha256$870000$aSeGcuMSk5XECInrhNZqCU$XKpr1jk2AD+SXbCPUDjjxv420v8/tPDumLiJOj4odiw=',
    false, 'test_user_2', 'Dmitry', 'Cherdobol', 'test2@test.ru', false, true, '2024-10-02 00:00:00',
    '39768e51-d795-4713-b120-3f026663ab70')
ON CONFLICT DO NOTHING;

INSERT INTO users_user (password, is_superuser, username, first_name, last_name, email,
    is_staff, is_active, date_joined, id)
VALUES ('pbkdf2_sha256$870000$aSeGcuMSk5XECInrhNZqCU$XKpr1jk2AD+SXbCPUDjjxv420v8/tPDumLiJOj4odiw=',
    false, 'test_user_3', 'Andrew', 'Jhonson', 'test3@test.ru', false, true, '2024-10-02 00:00:00',
    'd8cbc1f4-51b3-4423-9676-2a0212ac66f8')
ON CONFLICT DO NOTHING;

INSERT INTO users_user (password, is_superuser, username, first_name, last_name, email,
    is_staff, is_active, date_joined, id)
VALUES ('pbkdf2_sha256$870000$aSeGcuMSk5XECInrhNZqCU$XKpr1jk2AD+SXbCPUDjjxv420v8/tPDumLiJOj4odiw=',
    false, 'test_user_4', 'Michael', 'Harris', 'test4@test.ru', false, true, '2024-10-02 00:00:00',
    '0080a025-6ee9-43b3-b857-1d4fe65f73d5')
ON CONFLICT DO NOTHING;

INSERT INTO users_user (password, is_superuser, username, first_name, last_name, email,
    is_staff, is_active, date_joined, id)
VALUES ('pbkdf2_sha256$870000$aSeGcuMSk5XECInrhNZqCU$XKpr1jk2AD+SXbCPUDjjxv420v8/tPDumLiJOj4odiw=',
    false, 'test_user_5', 'Jhon', 'Hardy', 'test5@test.ru', false, true, '2024-10-02 00:00:00',
    'd1e606b0-0452-46a7-9190-8671a82fdea0')
ON CONFLICT DO NOTHING;

INSERT INTO notifications_template(slug, title, description, content)
VALUES ('Welcome', 'Welcome template', 'This is welcome template', '<h1>Hi User</h1>')
ON CONFLICT DO NOTHING;

INSERT INTO notifications_template(slug, title, description, content)
VALUES ('Password', 'Password template', 'This is a password template', '<p>change password, please!</p>')
ON CONFLICT DO NOTHING;

INSERT INTO notifications_template(slug, title, description, content)
VALUES ('Success', 'Success template', 'This is a success template', '<strong>You are welcome</strong>')
ON CONFLICT DO NOTHING;

INSERT INTO notifications_template(slug, title, description, content)
VALUES ('Stock', 'Stock template', 'This is a stock template', '<strong>Welcome to our site!</strong>')
ON CONFLICT DO NOTHING;

INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('observations', 'PERSONAL', 'Stock', 'true', '0 8 * * *', '2017-03-08 12:59:12', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('templates', 'GROUP', 'Password', 'false', '0 8 * * *', '1989-09-26 00:07:10', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('wolf', 'GROUP', 'Password', 'true', '0 8 * * *', '1982-06-25 10:51:22', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('passes', 'GROUP', 'Welcome', 'false', '0 8 * * *', '2002-11-08 00:48:41', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('location', 'GROUP', 'Success', 'true', '0 8 * * *', '2002-04-14 05:28:01', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('weekend', 'GROUP', 'Success', 'true', '0 8 * * *', '1997-03-04 10:29:55', 'email');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('convergence', 'GROUP', 'Stock', 'false', '0 8 * * *', '2019-12-23 16:15:02', 'email');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('boat', 'GROUP', 'Stock', 'true', '0 8 * * *', '1992-06-15 02:37:10', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('label', 'GROUP', 'Welcome', 'true', '0 8 * * *', '1985-05-14 09:54:18', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('fever', 'GROUP', 'Welcome', 'true', '0 8 * * *', '2000-10-02 21:11:57', 'email');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('clara', 'PERSONAL', 'Password', 'false', '0 8 * * *', '1993-06-24 22:51:49', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('humanitarian', 'GROUP', 'Welcome', 'true', '0 8 * * *', '1979-03-24 13:21:35', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('membrane', 'PERSONAL', 'Welcome', 'true', '0 8 * * *', '1987-10-08 06:12:09', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('brochures', 'GROUP', 'Welcome', 'true', '0 8 * * *', '1984-02-08 01:16:25', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('charitable', 'PERSONAL', 'Success', 'false', '0 8 * * *', '1974-06-26 21:14:11', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('cube', 'PERSONAL', 'Password', 'false', '0 8 * * *', '1993-05-25 08:20:38', 'email');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('distributed', 'PERSONAL', 'Welcome', 'true', '0 8 * * *', '2003-04-21 13:41:24', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('que', 'PERSONAL', 'Password', 'false', '0 8 * * *', '1976-10-24 17:45:17', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('junction', 'GROUP', 'Success', 'false', '0 8 * * *', '2016-06-20 01:05:33', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('underlying', 'GROUP', 'Success', 'false', '0 8 * * *', '2016-01-15 12:46:21', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('carmen', 'GROUP', 'Password', 'true', '0 8 * * *', '2024-03-16 10:40:05', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('losing', 'PERSONAL', 'Stock', 'false', '0 8 * * *', '2005-09-19 23:00:21', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('politics', 'PERSONAL', 'Stock', 'true', '0 8 * * *', '1998-01-05 07:45:12', 'email');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('toy', 'GROUP', 'Welcome', 'false', '0 8 * * *', '2012-03-25 12:26:11', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('javascript', 'GROUP', 'Welcome', 'true', '0 8 * * *', '2009-10-24 09:50:17', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('continually', 'PERSONAL', 'Welcome', 'false', '0 8 * * *', '1972-12-09 13:30:49', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('raises', 'GROUP', 'Password', 'true', '0 8 * * *', '2000-12-05 07:42:34', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('zealand', 'PERSONAL', 'Password', 'false', '0 8 * * *', '2007-09-17 07:10:53', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('visited', 'GROUP', 'Stock', 'true', '0 8 * * *', '2009-08-31 04:04:13', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('process', 'PERSONAL', 'Stock', 'false', '0 8 * * *', '1983-11-12 22:32:52', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('selected', 'PERSONAL', 'Welcome', 'false', '0 8 * * *', '1981-12-25 16:18:24', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('perspective', 'GROUP', 'Password', 'true', '0 8 * * *', '1972-11-22 12:43:02', 'email');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('outcomes', 'GROUP', 'Stock', 'false', '0 8 * * *', '1992-07-19 23:03:33', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('still', 'PERSONAL', 'Stock', 'false', '0 8 * * *', '1995-08-19 04:28:45', 'email');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('did', 'PERSONAL', 'Password', 'true', '0 8 * * *', '1999-08-24 22:01:57', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('estimates', 'GROUP', 'Password', 'true', '0 8 * * *', '2021-02-07 11:40:28', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('seen', 'GROUP', 'Success', 'true', '0 8 * * *', '2010-09-28 00:47:40', 'email');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('lows', 'PERSONAL', 'Stock', 'true', '0 8 * * *', '2002-01-13 15:12:03', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('cincinnati', 'PERSONAL', 'Password', 'true', '0 8 * * *', '2003-01-15 09:22:42', 'email');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('stands', 'PERSONAL', 'Stock', 'true', '0 8 * * *', '2005-05-11 01:32:43', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('myers', 'GROUP', 'Stock', 'false', '0 8 * * *', '2015-04-16 07:38:13', 'email');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('paths', 'GROUP', 'Password', 'false', '0 8 * * *', '2023-10-10 19:36:34', 'email');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('bernard', 'PERSONAL', 'Welcome', 'false', '0 8 * * *', '1977-07-02 05:22:09', 'email');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('mean', 'PERSONAL', 'Success', 'false', '0 8 * * *', '1981-04-19 11:33:42', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('watt', 'PERSONAL', 'Stock', 'true', '0 8 * * *', '2020-05-27 08:50:06', 'email');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('alerts', 'PERSONAL', 'Success', 'false', '0 8 * * *', '1976-04-07 16:09:40', 'email');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('pad', 'PERSONAL', 'Password', 'true', '0 8 * * *', '1998-01-19 14:55:40', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('mortgages', 'PERSONAL', 'Success', 'false', '0 8 * * *', '1972-04-25 06:05:18', 'email');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('pty', 'GROUP', 'Password', 'true', '0 8 * * *', '2020-01-31 15:35:58', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('chile', 'GROUP', 'Stock', 'true', '0 8 * * *', '1985-11-06 11:40:22', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('heard', 'GROUP', 'Success', 'false', '0 8 * * *', '1985-12-22 11:29:07', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('cds', 'GROUP', 'Stock', 'true', '0 8 * * *', '1972-09-19 21:34:17', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('portland', 'PERSONAL', 'Stock', 'false', '0 8 * * *', '1986-01-22 10:21:00', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('compliant', 'PERSONAL', 'Success', 'false', '0 8 * * *', '1988-10-29 10:14:34', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('going', 'PERSONAL', 'Stock', 'false', '0 8 * * *', '2001-07-26 16:40:15', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('assembly', 'GROUP', 'Stock', 'true', '0 8 * * *', '1973-11-23 11:16:34', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('obtain', 'PERSONAL', 'Welcome', 'false', '0 8 * * *', '1982-03-27 22:15:15', 'email');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('metals', 'GROUP', 'Welcome', 'true', '0 8 * * *', '1976-09-03 18:55:48', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('thumbs', 'PERSONAL', 'Password', 'true', '0 8 * * *', '1970-06-04 16:01:17', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('op', 'GROUP', 'Stock', 'true', '0 8 * * *', '2003-06-13 09:27:40', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('me', 'GROUP', 'Success', 'true', '0 8 * * *', '2017-09-21 12:05:53', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('techniques', 'GROUP', 'Success', 'true', '0 8 * * *', '1982-03-12 19:32:30', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('crafts', 'PERSONAL', 'Success', 'true', '0 8 * * *', '2022-01-11 04:05:51', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('surrey', 'GROUP', 'Password', 'false', '0 8 * * *', '1977-06-09 07:19:06', 'email');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('tremendous', 'PERSONAL', 'Stock', 'true', '0 8 * * *', '1972-05-15 03:35:15', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('strategy', 'GROUP', 'Welcome', 'false', '0 8 * * *', '1976-12-14 15:12:53', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('insects', 'GROUP', 'Success', 'false', '0 8 * * *', '2022-02-07 17:03:43', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('cream', 'PERSONAL', 'Stock', 'true', '0 8 * * *', '2024-08-05 13:55:35', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('directory', 'PERSONAL', 'Password', 'false', '0 8 * * *', '2019-02-26 08:54:57', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('patent', 'PERSONAL', 'Stock', 'false', '0 8 * * *', '2018-10-31 18:23:30', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('tomatoes', 'PERSONAL', 'Welcome', 'true', '0 8 * * *', '1979-06-18 19:07:06', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('elimination', 'PERSONAL', 'Stock', 'true', '0 8 * * *', '1973-04-04 15:02:35', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('tire', 'GROUP', 'Stock', 'true', '0 8 * * *', '2004-09-03 14:53:28', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('believed', 'PERSONAL', 'Welcome', 'false', '0 8 * * *', '1992-05-22 08:32:00', 'email');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('merely', 'PERSONAL', 'Stock', 'false', '0 8 * * *', '1996-11-17 09:27:21', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('quickly', 'PERSONAL', 'Password', 'true', '0 8 * * *', '1999-06-13 12:59:23', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('indoor', 'PERSONAL', 'Success', 'true', '0 8 * * *', '1988-03-07 16:30:25', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('fwd', 'GROUP', 'Password', 'true', '0 8 * * *', '1989-12-03 19:22:37', 'email');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('decline', 'GROUP', 'Password', 'false', '0 8 * * *', '2014-02-16 08:58:44', 'email');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('directions', 'GROUP', 'Stock', 'true', '0 8 * * *', '2020-12-11 17:16:51', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('backup', 'GROUP', 'Stock', 'false', '0 8 * * *', '1993-08-05 17:16:00', 'email');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('mo', 'GROUP', 'Success', 'false', '0 8 * * *', '2006-08-26 23:16:32', 'email');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('lead', 'PERSONAL', 'Success', 'true', '0 8 * * *', '2014-01-15 11:26:25', 'email');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('loved', 'GROUP', 'Stock', 'true', '0 8 * * *', '2010-03-08 16:09:32', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('house', 'PERSONAL', 'Password', 'true', '0 8 * * *', '2002-12-22 07:49:27', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('tax', 'PERSONAL', 'Welcome', 'false', '0 8 * * *', '2020-06-22 10:02:15', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('month', 'PERSONAL', 'Welcome', 'false', '0 8 * * *', '2017-05-17 19:21:25', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('detective', 'GROUP', 'Welcome', 'true', '0 8 * * *', '1977-01-16 06:55:04', 'email');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('fault', 'PERSONAL', 'Password', 'true', '0 8 * * *', '1987-06-17 01:32:34', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('dishes', 'PERSONAL', 'Stock', 'false', '0 8 * * *', '2010-01-16 22:47:45', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('basis', 'GROUP', 'Stock', 'true', '0 8 * * *', '1989-10-27 03:15:26', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('boundaries', 'GROUP', 'Stock', 'false', '0 8 * * *', '2018-11-14 22:31:07', 'email');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('taught', 'GROUP', 'Welcome', 'false', '0 8 * * *', '1971-11-14 16:12:42', 'push');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('centres', 'PERSONAL', 'Success', 'false', '0 8 * * *', '1976-10-03 05:41:17', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('features', 'GROUP', 'Success', 'false', '0 8 * * *', '1984-03-10 12:02:19', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('compression', 'PERSONAL', 'Stock', 'false', '0 8 * * *', '2011-01-29 19:44:40', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('gale', 'PERSONAL', 'Stock', 'true', '0 8 * * *', '2001-01-28 06:09:56', 'email');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('donate', 'PERSONAL', 'Welcome', 'false', '0 8 * * *', '2019-12-20 13:42:08', 'sms');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('clone', 'GROUP', 'Password', 'true', '0 8 * * *', '1993-03-13 04:18:20', 'email');
INSERT INTO notifications_notification (name, type, template_id, is_recurring, recurrence_rule, scheduled_time, delivery_method)
VALUES ('dolls', 'GROUP', 'Welcome', 'true', '0 8 * * *', '1975-10-30 00:16:44', 'sms');



INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '2012-11-24 23:36:19', '21', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '1985-03-10 23:45:29', '39', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '2023-06-24 20:27:22', '85', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '2014-08-02 02:34:05', '13', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '2010-04-11 18:13:07', '43', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '2004-07-25 00:31:09', '37', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '2005-08-07 19:09:11', '96', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '1978-08-02 16:05:26', '57', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '2012-06-19 02:54:46', '33', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '1972-03-25 20:37:53', '70', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '1985-09-29 00:27:13', '62', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '2004-07-07 05:23:12', '19', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '1977-11-12 16:39:48', '35', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '1992-05-07 23:16:56', '28', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '2011-08-22 05:31:38', '65', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '2007-05-14 21:02:53', '6', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '2007-03-17 11:37:39', '10', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '1981-08-10 08:32:05', '86', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '2002-10-20 06:03:18', '20', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '1972-05-31 10:36:15', '57', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '1975-02-05 08:05:00', '63', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '2015-07-30 22:18:48', '34', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '1985-09-25 18:51:20', '67', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '2016-07-17 19:12:56', '55', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '1973-04-01 06:43:23', '78', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '1983-12-05 23:18:48', '58', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '1988-06-04 20:25:08', '68', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '2004-12-20 08:14:17', '8', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '2021-01-26 00:50:37', '51', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '2017-07-10 03:23:39', '22', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '1979-12-11 08:49:11', '72', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '1970-11-11 10:25:25', '31', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '1974-08-27 11:57:41', '79', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '1999-09-04 16:07:07', '99', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '1985-01-21 23:20:15', '90', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '2016-03-08 23:11:11', '79', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '1988-09-05 22:00:27', '65', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '1970-04-30 16:31:29', '24', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '1991-08-28 06:44:01', '55', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '2001-06-27 09:27:21', '92', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '1985-04-03 06:07:45', '61', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '2018-06-03 00:21:14', '29', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '2019-12-10 21:24:03', '49', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '2020-07-23 04:22:36', '27', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '2005-04-05 11:26:53', '9', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '2014-10-24 23:36:59', '17', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '1976-11-21 11:27:30', '73', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '1996-03-02 13:13:45', '5', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '1992-04-27 01:13:33', '35', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '1978-02-07 19:05:25', '40', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '1975-06-12 16:50:23', '75', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '2015-03-12 07:13:50', '3', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '1997-10-25 16:28:24', '2', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '1976-03-29 15:24:24', '1', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '1982-11-27 07:22:15', '53', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '2010-09-10 15:10:19', '51', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '1971-02-27 22:54:46', '13', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '1982-09-13 18:37:46', '2', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '1994-04-21 18:06:03', '16', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '2011-03-12 20:51:03', '13', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '2011-04-08 16:24:18', '49', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '2016-04-04 21:37:03', '84', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '2007-11-10 06:51:23', '34', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '1994-08-10 18:30:10', '34', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '2016-09-15 08:47:58', '4', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '2020-09-10 12:21:03', '43', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '1973-01-30 04:02:05', '57', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '1999-01-21 17:12:04', '15', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '2001-04-29 06:52:11', '18', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '1988-04-04 14:43:42', '63', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '2024-06-28 11:56:05', '56', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '2016-06-02 23:57:22', '75', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '2023-10-11 13:21:19', '86', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '1980-11-21 08:16:42', '39', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '1980-08-20 12:57:47', '93', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '1982-04-11 21:57:46', '57', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '2012-12-29 19:04:52', '67', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '2010-04-09 17:36:49', '59', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '1989-06-16 17:34:15', '49', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '1980-10-04 23:55:38', '30', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '2007-01-18 20:20:14', '37', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'pending', '1991-03-22 19:20:25', '42', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '2020-03-07 02:35:07', '25', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '1982-02-21 12:18:41', '72', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '1994-03-14 09:46:00', '56', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '1985-10-14 16:58:17', '39', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '2002-10-12 22:51:48', '71', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '1999-04-21 04:20:31', '27', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '1989-09-14 20:38:10', '1', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '2001-11-22 20:01:23', '8', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '1970-03-05 15:22:44', '36', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '2019-09-03 07:53:14', '38', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'pending', '2022-08-20 02:51:23', '87', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '2021-01-27 10:10:40', '6', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '1998-02-03 11:12:45', '72', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '1976-03-14 13:47:22', '62', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '2008-04-25 08:47:26', '70', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '2005-01-10 23:37:01', '80', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'pending', '1992-05-11 03:47:21', '93', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '2011-12-27 01:55:11', '74', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '1970-03-10 05:41:15', '16', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '2022-05-28 03:17:22', '23', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '2001-04-11 20:39:37', '19', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '1988-12-09 22:52:41', '72', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '1975-04-05 22:02:48', '50', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '1978-01-10 01:46:27', '19', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '1974-10-08 22:40:36', '16', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '1985-03-15 08:36:32', '89', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '2011-02-14 02:30:00', '87', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '2017-05-30 01:59:13', '96', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '1991-12-22 15:52:42', '3', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '2015-01-03 11:32:15', '49', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '2023-06-05 05:06:58', '67', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '1974-10-10 23:16:00', '52', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '1981-07-28 00:43:39', '15', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '1983-09-10 15:09:03', '14', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '2003-11-05 11:21:36', '20', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '1997-06-28 11:13:10', '96', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'pending', '2001-05-30 05:58:36', '90', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '1972-05-01 22:19:35', '78', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '2021-07-14 23:58:43', '65', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '2000-11-11 19:08:31', '84', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '2005-08-09 02:30:42', '13', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '1988-04-05 10:27:47', '98', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '2016-10-08 01:00:30', '12', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '2008-03-23 20:45:05', '22', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '2023-03-15 08:08:43', '9', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '1982-09-28 18:23:17', '65', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '2020-02-29 06:43:52', '85', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '2009-05-18 13:37:09', '49', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '1982-12-12 00:38:42', '3', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '1990-08-26 11:54:24', '29', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '2005-05-15 01:16:57', '24', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '1989-09-26 05:35:34', '72', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '2013-04-10 03:38:57', '46', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '1973-12-10 01:36:23', '82', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '1977-04-30 05:45:19', '84', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '2015-09-12 08:22:18', '73', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '1998-02-22 22:02:45', '99', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '1978-10-06 05:48:35', '14', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '2019-02-19 23:16:29', '31', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '2016-07-05 21:50:01', '63', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '2010-11-15 17:04:36', '60', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '1985-02-20 15:54:05', '58', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'pending', '1976-02-28 10:34:50', '56', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '1970-04-15 19:33:18', '28', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '2015-11-07 18:46:52', '35', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '1995-12-20 04:05:03', '27', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '2001-06-30 17:49:39', '44', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '1993-10-16 09:42:54', '95', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '1985-09-23 04:59:21', '80', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '2021-03-28 17:12:31', '69', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '1974-12-30 08:45:34', '36', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '1995-12-18 09:23:42', '48', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '2005-05-17 13:59:55', '52', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '1982-04-30 06:42:47', '41', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '2001-11-16 23:27:58', '4', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '2021-01-14 18:09:38', '11', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '1989-08-08 02:04:51', '74', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '2003-02-17 21:30:16', '38', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '2006-08-10 06:32:30', '81', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '1975-09-20 04:06:09', '3', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '1971-05-18 10:41:52', '33', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '1987-12-06 11:12:38', '92', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '1983-06-20 03:38:09', '88', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '1991-08-31 15:42:12', '77', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '1992-03-21 05:58:12', '94', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '2001-11-13 06:35:45', '32', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '1981-08-21 08:25:56', '28', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '1998-08-26 11:57:32', '12', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '2002-01-20 21:11:29', '34', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '1985-10-17 12:21:51', '7', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '2002-02-15 04:19:24', '78', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '2016-03-27 23:24:07', '3', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '2014-07-01 09:04:14', '78', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '2019-10-01 02:35:10', '77', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '1996-02-26 05:49:24', '30', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '2011-05-20 12:50:08', '40', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '1997-10-16 16:24:13', '69', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '1990-02-03 20:26:00', '72', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '2011-10-06 03:47:44', '38', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '1996-06-05 18:45:19', '65', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '2018-09-05 08:03:19', '42', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '2016-12-22 17:04:40', '17', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '2023-08-15 15:11:23', '12', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '2004-12-27 01:45:43', '16', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '1980-06-16 04:25:30', '26', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '2020-04-12 22:16:53', '25', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '2007-05-25 18:22:30', '45', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'pending', '1988-02-01 20:26:42', '91', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '1992-06-11 23:18:06', '78', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'pending', '1970-07-07 01:05:21', '74', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '1997-06-29 14:39:18', '8', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '1990-02-17 01:16:32', '38', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '1992-02-11 19:34:02', '75', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '1973-04-06 07:31:25', '13', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '1980-01-23 19:28:45', '91', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'pending', '2001-02-26 23:52:19', '13', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '2014-01-02 19:40:49', '13', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '1992-08-23 19:30:33', '48', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '2003-07-04 15:14:26', '54', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '2019-03-28 12:44:45', '79', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '1989-04-18 16:22:12', '6', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '2013-01-22 09:52:49', '94', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '2007-04-10 03:17:05', '8', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '1982-02-20 02:13:01', '20', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '2020-02-08 19:52:40', '70', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '1993-06-04 16:59:31', '22', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '1997-07-23 22:07:49', '85', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '2010-06-07 08:33:52', '32', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '1995-05-14 02:36:23', '27', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '2003-12-11 17:40:54', '68', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '1997-02-20 18:25:54', '86', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '1984-06-17 11:02:04', '65', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '2023-03-09 05:00:51', '97', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '2014-09-02 12:45:11', '16', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '2019-07-22 04:40:53', '34', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '2009-11-16 14:27:27', '80', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '2007-11-26 02:35:23', '74', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '1998-06-18 23:16:54', '68', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '2014-07-23 08:53:37', '62', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '1982-05-02 13:49:07', '7', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '2019-06-19 01:21:34', '30', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '2021-07-18 07:02:48', '36', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '1974-06-21 18:20:21', '75', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'sent', '1988-07-15 18:48:59', '45', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '1996-09-28 01:38:04', '43', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '2012-07-29 20:27:00', '64', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '2013-11-20 02:54:56', '6', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'sent', '2002-03-30 01:54:44', '34', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '1988-03-14 05:35:33', '74', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '1982-01-27 09:06:07', '9', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '2020-08-07 02:41:53', '74', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '1974-06-19 07:45:24', '85', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '2020-10-17 21:18:37', '78', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '2014-07-09 15:17:26', '58', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'sent', '2005-07-15 21:56:15', '41', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '1999-10-07 23:48:16', '32', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '2017-03-15 07:45:04', '82', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '1999-05-10 23:45:58', '76', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '1994-03-13 08:18:13', '77', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'pending', '1985-06-15 04:54:51', '70', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '2017-03-31 10:26:54', '32', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '2023-10-17 07:27:16', '17', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '1984-09-26 06:43:20', '57', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '2012-12-12 12:30:04', '55', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '1979-05-25 08:09:51', '98', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '2019-04-22 08:27:14', '41', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '1980-07-23 13:13:27', '62', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '2011-10-14 00:39:01', '24', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '2000-11-14 04:35:36', '37', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '2013-09-24 20:53:33', '54', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '1983-03-29 20:12:37', '56', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '1978-05-20 03:22:31', '82', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '1980-07-05 15:06:12', '8', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '1976-12-26 15:48:18', '35', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '1999-09-12 03:22:42', '99', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '2000-12-03 19:36:18', '56', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '1984-06-23 08:53:54', '99', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '2016-10-24 11:02:51', '94', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '1978-04-20 07:36:32', '67', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '2024-02-10 19:24:11', '64', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '1978-08-03 18:49:21', '59', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '1979-09-25 01:36:11', '61', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '1981-07-11 06:37:20', '57', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '1970-07-20 16:29:12', '35', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '2013-07-14 10:08:31', '92', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '1988-12-17 09:50:53', '29', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '1992-06-28 09:16:35', '38', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '1980-08-12 06:24:33', '4', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'pending', '2003-05-16 14:39:06', '32', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '1998-08-16 20:22:17', '29', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '2002-02-28 14:37:33', '20', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '2016-07-17 07:04:21', '88', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '1978-07-24 06:53:30', '45', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '1988-05-15 00:27:13', '48', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '1996-08-11 06:38:47', '85', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '2003-11-10 20:56:24', '4', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '2019-06-19 17:35:05', '30', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '2016-12-03 23:31:43', '20', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '2019-11-15 21:41:31', '32', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '1999-01-20 00:08:44', '12', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '1971-12-30 10:49:55', '48', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '1989-11-15 17:09:31', '38', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'pending', '1970-07-17 16:59:59', '48', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '2015-12-07 15:42:37', '16', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '1991-08-08 14:25:42', '14', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '1981-05-03 03:42:10', '10', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '2007-04-05 03:23:21', '63', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '2014-02-27 04:09:52', '23', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '2021-07-30 09:48:06', '89', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '1985-02-24 14:21:06', '17', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '1980-09-05 12:23:07', '41', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'sent', '1997-02-26 18:59:15', '30', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'sent', '2001-02-17 23:08:01', '10', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '1976-04-24 13:36:41', '54', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '2009-10-04 18:31:53', '48', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '1995-04-14 09:09:09', '70', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '1986-05-11 12:37:04', '17', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '2013-08-16 00:24:38', '83', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '1984-01-23 18:41:54', '34', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '2014-03-15 07:01:32', '91', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '1996-03-08 07:03:17', '35', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '1983-11-17 16:09:07', '53', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '2001-03-22 11:47:34', '22', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '1994-09-04 19:02:37', '7', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '1979-04-04 06:34:12', '96', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '1991-07-01 19:55:21', '99', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '2017-11-08 20:34:45', '51', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '1989-09-01 02:28:45', '8', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '1997-08-19 07:15:12', '66', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '2000-11-24 05:57:19', '37', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '1976-08-07 13:31:46', '48', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '1977-01-22 09:43:46', '16', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '1990-09-30 12:09:04', '2', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '2017-08-07 22:39:34', '8', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '2013-09-14 01:54:16', '39', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '1994-05-29 13:46:36', '96', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '2016-02-13 12:24:22', '76', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '2011-11-16 01:03:24', '76', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '2015-09-14 03:58:26', '39', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '2022-01-18 18:25:15', '9', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '1980-08-15 13:13:30', '31', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '1985-01-07 10:19:25', '18', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '1994-03-25 01:52:23', '2', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '1993-12-05 14:17:51', '2', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'sent', '2003-05-19 05:13:13', '62', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '2013-01-30 13:41:50', '70', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '2002-09-24 14:32:28', '49', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '1989-04-23 11:21:53', '56', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '1982-07-27 10:08:48', '31', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '1983-12-31 11:47:25', '40', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '1991-09-10 13:14:01', '25', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '2009-08-01 23:54:20', '59', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '1999-10-12 20:34:14', '35', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '2006-10-30 13:25:23', '79', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '1993-04-16 21:12:55', '66', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '2005-11-10 06:36:52', '48', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '2003-08-31 22:18:08', '35', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '2017-06-25 06:02:08', '84', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '1992-11-27 03:11:09', '55', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '2023-03-28 12:29:20', '35', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '1978-04-02 06:56:20', '5', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'sent', '1978-03-06 20:34:13', '85', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'pending', '2007-08-10 03:50:26', '10', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '2000-03-09 22:22:14', '55', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '2007-08-05 21:38:39', '50', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '1989-10-11 00:46:30', '43', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '2017-08-25 07:16:11', '76', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '2009-12-31 19:03:52', '27', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '1981-08-16 17:05:44', '82', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '2005-02-25 01:37:11', '19', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '2006-10-25 21:40:31', '73', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '2022-03-14 18:28:10', '34', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '1984-11-29 12:05:51', '98', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '2012-07-02 17:54:38', '82', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '1994-05-08 23:05:39', '65', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '2001-12-19 00:13:54', '73', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '2015-03-22 01:42:10', '36', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '1996-03-29 07:33:56', '68', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '2023-02-23 08:06:21', '80', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'sent', '1998-02-17 04:12:31', '8', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '2018-05-11 14:41:38', '39', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '2006-09-08 18:32:35', '28', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '2016-03-27 21:01:54', '55', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '2015-04-07 09:53:00', '36', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '1974-08-10 18:19:43', '62', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '2004-04-29 16:01:46', '33', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'pending', '1992-06-28 13:20:10', '56', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '2016-11-19 18:28:59', '40', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '2019-09-18 04:25:41', '81', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '2004-08-26 07:58:03', '78', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '2016-04-21 13:33:32', '61', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '1980-05-11 13:17:55', '93', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '2016-06-17 12:37:04', '15', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '2019-01-16 15:10:21', '83', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '1972-05-21 12:00:35', '64', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '2017-11-13 05:37:22', '6', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '2010-09-17 01:15:45', '62', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '1990-08-30 16:58:54', '98', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '2000-06-29 14:32:09', '71', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '1971-03-26 09:39:25', '70', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '1998-04-16 17:28:33', '74', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '2004-06-19 22:51:47', '41', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '1989-11-25 06:14:23', '86', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '1972-12-09 08:34:12', '11', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '2010-07-17 19:21:24', '77', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '2014-05-04 12:25:33', '18', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '1998-01-24 11:04:53', '23', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '1987-01-06 11:13:58', '23', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'pending', '1978-02-25 12:13:33', '23', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '2004-09-07 02:41:03', '18', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '1974-02-02 13:23:57', '14', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '2004-10-01 10:36:47', '31', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '2008-11-02 00:45:19', '28', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '1988-06-11 06:04:43', '74', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '1982-03-17 09:35:17', '31', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '2011-05-17 12:14:45', '92', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '2012-09-08 15:59:18', '71', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '1980-07-28 19:38:40', '40', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '2022-08-24 16:53:44', '19', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '2012-10-02 23:18:47', '21', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '1975-11-07 07:24:24', '35', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '1971-05-06 01:35:26', '14', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '1975-05-23 14:20:06', '3', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '1998-01-24 03:05:21', '40', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '2009-04-14 17:12:25', '29', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '2022-05-11 03:18:53', '25', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '1973-08-28 16:38:59', '85', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '2002-07-01 07:11:00', '18', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '1997-11-08 23:10:52', '5', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '2002-01-13 08:03:25', '59', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '1980-12-09 18:38:05', '78', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '2024-01-28 07:46:47', '17', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '2001-09-16 07:25:51', '18', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '2002-08-12 00:00:55', '91', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '1971-06-16 16:45:23', '16', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '1970-12-15 11:19:18', '23', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '2006-04-23 10:25:33', '95', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '1989-11-23 21:12:18', '9', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '1988-01-31 07:15:39', '27', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '2020-03-13 10:33:50', '91', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '2016-05-26 00:51:52', '10', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '2015-08-02 23:01:46', '94', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '2019-03-06 09:39:42', '64', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '2019-03-10 21:47:54', '56', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '1984-11-01 23:34:19', '8', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '2007-03-09 03:35:21', '74', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '2000-01-19 10:22:32', '70', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '2016-02-15 15:07:19', '39', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '1973-10-30 01:58:18', '19', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '1985-11-09 17:03:23', '68', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '1988-05-07 02:51:01', '2', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '2007-07-06 21:40:30', '83', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '1990-11-11 13:38:18', '6', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '1994-03-12 03:56:31', '33', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '1980-10-09 00:23:41', '95', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '1991-07-28 23:44:15', '99', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '1988-09-06 15:45:59', '71', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '1986-10-31 05:59:02', '1', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '2000-10-19 20:26:53', '61', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '2021-11-16 02:50:46', '86', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '2001-05-06 15:58:59', '7', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '2010-08-16 01:59:52', '4', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '2001-11-26 20:03:21', '48', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '1970-07-13 11:08:55', '45', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '2010-03-07 05:16:11', '72', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '1980-06-12 08:21:48', '12', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '1970-04-15 21:08:51', '45', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '1984-05-12 23:07:13', '51', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '2021-05-15 16:28:56', '15', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '1991-10-22 10:40:42', '17', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '2011-02-20 14:08:03', '50', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '2004-12-13 01:59:38', '13', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '1991-07-28 11:47:45', '10', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '1972-03-02 20:30:50', '27', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '2020-08-10 08:06:47', '32', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '1972-07-06 12:04:27', '11', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '2003-04-19 07:26:35', '79', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '1985-12-18 09:16:27', '54', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '2013-02-14 15:31:25', '23', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '2017-05-09 09:06:40', '62', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '1993-02-16 07:28:01', '24', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '1970-05-24 19:45:25', '87', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '1987-06-15 15:37:50', '29', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'sent', '2017-02-01 10:25:21', '86', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '1990-08-03 12:09:42', '21', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '2016-11-25 14:48:26', '46', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '1979-06-15 18:24:41', '12', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '2014-12-06 09:18:11', '60', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '2023-02-03 15:54:00', '80', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '2002-08-24 23:09:16', '44', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '1990-01-18 09:44:18', '68', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '1985-08-24 16:52:48', '94', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '1986-05-01 05:53:00', '9', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '1981-05-08 11:02:23', '61', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '1987-03-15 09:26:36', '21', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '2022-08-03 09:35:50', '58', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '1975-05-02 05:47:42', '30', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '1985-12-16 17:18:33', '16', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '1998-10-04 14:21:26', '19', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '2018-07-02 16:35:30', '71', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '2014-09-27 20:34:56', '25', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '1983-01-02 04:23:21', '46', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '2000-12-10 08:36:43', '19', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '1995-04-04 19:37:02', '53', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '1990-12-24 07:57:27', '69', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '1992-10-30 19:30:50', '76', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '2015-08-24 03:40:17', '48', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '2006-02-13 07:05:53', '29', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '1993-02-11 09:44:47', '56', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '1988-06-20 13:03:54', '10', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '1973-08-12 23:01:23', '93', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '2021-10-25 18:18:44', '50', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '2023-02-10 07:23:21', '94', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '2014-04-13 21:56:14', '75', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '2014-03-27 10:21:55', '60', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '2019-05-10 21:51:58', '74', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '2019-02-15 15:14:28', '54', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '2009-01-08 09:13:26', '93', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '2010-12-23 08:41:34', '3', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '1998-08-25 09:44:27', '68', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '2013-01-04 21:04:58', '61', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '1978-02-17 01:32:49', '40', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '1979-07-24 23:31:42', '32', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '1995-04-16 12:45:35', '21', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '1981-08-03 13:39:11', '61', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '2017-05-01 17:44:28', '85', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '2018-07-22 13:10:00', '23', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '2004-04-06 18:32:37', '33', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '1981-07-16 21:29:06', '22', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '1984-05-22 20:09:18', '28', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '2007-11-17 00:45:12', '33', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '2013-09-19 02:01:36', '16', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '2016-11-07 07:28:46', '30', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '2010-08-28 06:48:57', '92', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '1986-04-10 18:24:38', '80', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '2005-04-07 18:33:29', '5', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '2011-12-30 00:38:38', '3', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '1978-02-24 13:32:07', '87', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '1986-10-18 17:59:29', '10', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '1990-01-07 03:34:58', '2', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '2006-03-13 18:04:07', '77', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '1976-08-25 02:17:08', '30', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '1984-04-19 21:41:40', '77', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '1994-04-16 00:38:10', '3', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '1995-07-29 08:03:26', '37', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '2012-11-09 10:48:23', '31', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '1983-06-20 04:48:00', '11', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '1977-12-25 11:58:28', '61', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '1971-02-10 18:56:56', '72', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '1971-08-24 03:01:30', '63', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '2002-06-17 04:41:09', '4', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '1984-08-30 12:42:08', '85', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '2013-01-30 03:31:31', '99', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '1991-01-19 13:42:20', '1', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '2010-11-19 18:27:44', '60', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '2009-08-22 23:10:07', '70', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '2007-05-13 07:42:19', '79', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '2001-06-25 11:03:39', '81', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '1986-12-17 19:39:07', '67', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '1987-09-25 12:54:09', '75', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'sent', '2008-07-10 18:51:25', '49', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '1998-08-30 17:48:56', '42', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '2015-02-09 08:16:09', '70', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '1988-06-03 07:00:55', '39', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '1972-05-02 07:46:11', '32', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '2002-05-30 01:27:10', '38', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '1974-02-05 21:52:17', '52', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '1989-08-03 02:23:03', '47', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '1996-11-10 15:49:48', '55', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '1979-10-03 14:09:47', '36', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '1974-03-01 13:32:04', '96', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '1982-07-02 04:15:42', '70', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '2014-03-08 09:08:26', '62', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '1984-08-02 23:53:22', '57', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '2002-04-26 05:17:21', '93', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '1974-07-12 07:33:12', '36', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '1998-04-16 12:47:54', '87', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '1971-07-28 22:30:26', '71', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '1973-09-25 06:03:33', '28', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '2017-05-30 17:12:35', '33', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '2012-11-06 12:43:40', '5', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '2001-05-03 17:26:57', '18', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '2024-09-09 07:33:52', '64', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '1977-11-17 00:42:32', '76', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '2015-12-30 01:20:56', '47', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '2002-06-04 10:07:54', '46', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '1971-07-17 17:41:45', '76', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '2016-06-12 08:45:19', '42', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '1990-12-18 16:12:57', '48', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '2004-08-23 08:54:20', '16', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '1974-11-25 13:03:24', '28', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '1997-04-11 22:28:42', '16', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '1986-03-31 06:53:57', '80', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '2014-08-14 20:40:18', '56', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '2019-03-28 22:39:18', '26', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '2000-11-18 03:25:09', '1', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '2024-05-14 06:20:18', '41', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '2014-04-08 03:04:16', '2', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '2019-02-01 14:39:56', '49', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '1975-01-19 04:39:43', '94', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '2001-02-22 10:08:07', '94', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '2012-10-03 13:03:57', '23', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '1970-04-07 03:04:07', '43', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '2013-12-19 05:05:55', '35', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '1984-04-07 05:47:43', '91', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '2005-01-02 01:35:53', '18', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '1970-02-08 15:16:41', '84', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '1990-03-09 20:00:00', '31', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '1977-04-28 18:13:14', '60', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '2002-01-06 12:32:32', '49', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '2022-08-04 15:40:51', '46', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '1986-07-01 00:16:36', '9', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '2002-02-28 02:21:44', '55', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '2024-04-08 12:23:24', '84', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'sent', '1979-07-01 16:19:34', '53', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '2007-10-31 16:46:00', '13', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '2017-11-25 01:56:50', '31', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '2008-05-16 15:15:56', '43', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '2000-08-29 21:19:58', '35', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '1981-03-30 01:06:14', '63', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '1995-09-16 03:13:34', '6', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '2018-06-16 02:26:35', '55', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '1994-03-14 09:06:47', '3', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '1986-06-05 07:49:37', '88', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '2014-07-17 22:29:37', '66', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '1972-12-04 03:50:30', '57', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '1978-12-19 15:46:39', '51', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '1999-08-23 14:22:59', '99', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '1999-07-01 14:44:48', '68', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '2024-06-06 06:03:55', '33', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '1981-07-29 19:05:49', '26', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '1995-11-16 16:20:27', '62', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '2009-10-29 20:50:02', '74', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '1987-03-16 03:56:32', '40', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '1999-03-06 14:44:36', '84', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '1972-06-11 07:18:25', '22', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '1999-04-20 01:01:47', '89', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '2020-01-15 12:10:01', '57', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '2004-08-18 23:43:53', '88', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '1988-02-01 01:14:12', '19', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '1983-02-27 05:35:25', '98', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '1981-07-22 14:33:29', '21', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '1992-03-29 02:57:41', '16', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '2005-10-31 03:26:39', '27', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '2018-02-28 12:36:57', '20', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'pending', '1973-09-15 23:34:10', '12', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '2012-11-24 18:47:36', '77', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '2011-06-21 04:35:10', '60', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '1977-04-29 01:12:27', '36', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '1989-11-13 15:51:27', '66', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '1973-07-07 19:16:08', '58', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'sent', '1998-08-29 21:06:14', '93', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '1981-10-06 00:50:38', '30', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '2023-11-02 00:05:29', '77', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'pending', '2013-04-05 06:39:16', '9', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '1998-10-01 05:46:31', '9', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '2008-04-17 16:49:28', '39', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '1993-07-30 01:15:07', '10', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '1978-12-02 14:03:55', '25', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '1995-05-17 12:38:28', '97', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '1991-10-12 18:26:09', '85', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '2013-06-08 16:54:26', '76', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '1983-01-03 02:42:54', '93', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '2011-10-19 09:00:37', '10', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '2012-03-30 21:21:56', '16', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '2013-09-18 00:03:27', '51', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '1971-05-10 23:22:35', '57', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '1979-03-29 07:48:55', '32', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '2006-03-13 17:57:16', '64', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '2022-08-31 05:37:29', '50', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '1978-03-30 21:58:46', '47', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '1991-10-08 12:34:36', '24', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '2023-01-11 00:09:30', '1', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '2000-06-28 00:54:55', '65', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '1973-01-16 05:42:27', '76', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '2002-03-05 01:53:52', '96', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '1976-11-23 16:26:05', '32', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '1981-01-26 23:24:10', '69', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '2017-07-20 01:37:23', '14', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '1987-06-16 18:15:38', '83', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '2023-02-21 00:30:38', '7', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '2007-04-04 02:17:28', '48', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '2018-02-23 21:25:30', '11', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '1996-12-23 09:04:38', '75', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '2009-10-26 02:23:39', '11', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '2020-05-23 09:05:49', '81', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '2006-02-13 02:44:29', '1', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'pending', '1998-02-21 02:03:49', '53', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '2017-03-09 23:51:18', '87', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '1989-07-12 19:18:16', '45', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '2014-02-12 14:08:57', '2', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '2023-03-18 03:53:19', '59', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'pending', '2021-05-02 06:41:20', '74', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '1975-11-20 23:58:53', '9', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '2014-08-23 06:29:55', '55', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '1981-01-31 12:47:01', '54', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '1980-05-04 18:28:27', '89', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '2000-04-27 05:12:11', '47', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '1992-09-15 13:36:07', '57', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '1975-04-15 07:47:56', '42', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '2006-12-17 03:34:45', '90', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '1988-12-17 08:47:18', '24', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '2011-01-30 04:35:50', '59', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '1984-05-19 04:17:18', '19', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '2008-12-25 05:42:19', '24', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '2009-08-11 15:35:31', '91', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '1972-02-01 21:22:02', '86', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '1977-02-07 14:22:49', '53', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'pending', '1997-07-08 15:25:21', '97', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '1994-09-05 08:23:47', '34', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '2003-05-01 18:43:13', '91', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '1984-11-29 20:54:19', '4', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '1998-02-15 21:30:54', '76', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '1982-12-05 23:32:17', '36', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'sent', '1983-06-29 10:39:14', '24', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '1979-04-18 12:34:51', '31', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '2011-06-09 20:34:49', '27', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '2024-02-25 15:11:29', '48', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'sent', '2007-04-27 02:52:16', '90', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '2018-09-08 09:04:33', '8', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '1999-06-03 14:41:16', '67', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '2007-10-13 12:05:02', '93', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'sent', '2024-09-22 07:07:35', '4', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '1975-09-17 23:02:07', '52', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '1975-09-12 22:27:08', '20', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '1987-07-15 01:42:23', '69', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '2007-01-25 04:53:28', '41', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '1993-12-05 11:43:00', '99', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'sent', '1982-02-07 07:58:58', '92', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'sent', '1995-09-11 23:01:12', '73', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '1975-02-28 00:48:52', '83', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '2019-01-13 07:43:45', '35', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '2002-02-04 08:08:37', '76', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '1986-11-12 12:19:00', '95', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'sent', '2024-06-16 20:33:13', '52', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '2008-02-23 01:45:41', '36', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '1995-07-06 04:10:41', '11', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '1972-02-17 19:26:59', '32', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '1993-11-14 10:48:11', '92', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'sent', '2016-08-13 21:58:38', '61', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '2005-08-13 03:20:05', '67', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '1971-01-10 18:38:01', '16', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '2018-12-02 04:31:06', '6', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '1972-03-02 17:27:30', '2', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '2010-05-06 03:46:11', '72', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '1975-11-28 05:00:37', '51', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '1990-03-21 12:26:52', '77', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '1979-01-21 00:45:36', '1', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '2009-06-05 00:07:29', '48', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '1983-03-12 11:51:52', '60', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '2021-02-25 04:13:51', '50', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '1983-08-30 09:28:00', '58', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '1994-10-07 04:10:48', '69', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '1970-10-28 09:48:45', '66', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '1994-05-09 03:56:36', '53', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '1979-05-02 12:38:01', '71', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '1972-01-22 06:23:01', '22', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '2009-04-24 10:12:14', '4', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '2021-07-28 04:12:40', '96', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '1989-09-18 21:29:23', '11', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'sent', '1994-10-04 18:08:09', '86', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '1973-10-26 13:33:34', '46', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '2008-08-02 22:18:38', '16', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '2006-06-17 09:23:30', '76', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '2012-05-17 15:52:23', '39', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '2002-03-18 16:10:42', '36', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'sent', '2002-08-17 08:03:17', '1', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '2017-02-11 12:08:20', '24', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '2015-04-01 00:58:18', '49', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '1988-04-10 15:50:23', '35', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '1984-05-25 10:50:16', '10', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '1983-06-29 04:28:26', '39', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '2009-10-16 11:28:28', '10', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '2008-05-20 16:29:01', '50', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '1984-08-24 04:00:37', '14', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '2021-05-25 10:25:44', '99', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '1975-06-01 16:17:45', '73', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '1994-04-15 23:14:22', '64', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '2013-07-05 13:56:06', '5', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '2020-07-06 10:58:01', '9', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '1992-01-23 12:27:51', '56', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '2003-08-12 14:03:50', '87', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '2004-03-16 17:51:09', '36', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '2009-06-10 01:05:43', '95', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '2022-01-12 10:35:53', '64', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '1993-03-12 22:46:50', '81', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '2022-07-25 12:17:45', '92', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '2016-08-11 13:30:52', '57', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '1997-02-21 03:10:59', '2', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '2015-06-25 20:24:02', '28', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '1972-12-04 15:09:40', '89', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '1989-03-29 06:15:52', '20', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '1984-10-17 21:58:36', '64', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '2018-04-04 22:12:00', '21', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '1993-11-11 10:51:50', '6', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '2024-09-16 04:37:42', '72', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '1999-04-06 03:32:35', '85', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '2016-11-13 13:23:22', '65', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'sent', '2017-07-22 05:36:28', '40', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '2013-06-07 03:51:01', '31', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '2001-03-02 12:01:03', '36', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '2024-04-05 09:46:21', '48', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '2023-03-09 21:52:14', '69', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '1996-04-09 08:42:40', '72', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '1976-11-27 19:53:37', '60', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '2019-10-30 10:58:38', '26', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '1998-08-28 19:09:05', '13', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '1999-11-25 02:50:05', '40', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '2000-04-13 09:49:16', '29', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'pending', '1999-11-28 00:34:43', '31', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '2015-12-04 16:20:06', '77', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '2012-05-05 16:15:55', '60', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '2016-05-07 16:30:08', '42', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '1973-03-29 13:05:30', '80', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '1999-12-01 02:22:43', '59', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '1985-11-26 20:03:59', '71', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '2015-11-02 14:53:57', '20', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '1990-03-11 23:57:18', '52', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '1977-08-24 21:15:54', '92', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'pending', '2006-02-12 11:08:14', '72', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '1982-04-17 05:58:41', '8', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '2008-08-10 22:36:46', '22', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '2010-03-01 20:36:08', '81', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '1980-08-17 18:25:04', '1', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '2016-05-24 04:16:44', '49', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '2007-07-15 00:54:43', '57', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '1982-01-31 02:59:37', '88', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '1972-05-28 09:01:42', '7', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '1995-08-21 09:40:58', '26', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '1972-08-19 10:28:50', '25', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '1999-10-19 12:09:05', '84', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '1999-08-31 01:57:47', '47', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '1970-07-26 07:30:43', '59', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '2003-07-14 00:29:34', '61', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '1993-08-23 19:33:59', '7', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '2015-04-15 07:28:22', '45', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '1986-10-19 03:16:28', '51', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '2001-12-04 11:08:56', '11', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '1978-11-02 19:20:42', '21', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '2023-11-25 16:55:46', '15', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '2013-03-25 01:16:33', '41', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '2022-03-27 04:09:58', '28', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '2018-11-12 08:22:38', '46', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '1973-01-26 13:13:08', '47', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '1985-03-24 01:33:36', '8', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '1975-03-29 14:52:02', '54', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '2021-11-01 19:56:06', '61', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '2018-10-31 10:58:21', '90', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '2004-02-03 09:57:07', '54', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '2022-07-31 08:44:02', '46', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '1985-10-07 14:10:32', '91', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '2008-05-07 05:41:33', '71', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '2017-11-25 06:14:59', '66', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '2023-04-02 21:50:47', '8', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '1987-07-22 07:48:58', '64', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '2020-09-17 10:38:07', '68', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '1974-06-06 05:33:47', '5', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '1999-07-31 23:11:46', '6', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '2015-01-03 00:44:05', '2', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '1990-10-11 20:00:51', '71', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '1971-07-11 10:25:53', '26', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '2014-02-24 17:57:31', '85', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '2013-01-19 09:12:58', '70', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '1986-04-15 02:06:27', '11', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '2004-04-26 12:58:49', '5', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '2018-10-08 21:48:41', '57', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '1996-02-10 16:32:25', '19', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '2023-01-12 05:41:01', '15', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '1999-12-09 16:02:51', '56', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'pending', '1979-04-26 22:33:41', '16', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '2003-03-11 00:21:41', '67', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '1999-09-07 04:30:12', '70', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '2008-01-08 21:15:59', '2', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '1986-03-17 22:45:18', '45', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '1980-04-04 02:05:35', '10', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '1980-03-08 06:41:55', '6', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '2017-11-21 17:25:41', '95', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '1979-03-13 14:39:30', '23', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '2006-02-22 14:42:46', '14', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '2000-07-24 23:43:47', '76', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '1988-09-02 04:32:36', '85', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '1992-08-18 03:40:36', '67', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '2022-09-17 07:06:06', '55', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '1987-11-12 01:14:10', '20', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '1988-06-15 01:10:29', '98', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '2024-07-08 22:27:19', '55', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '2011-02-27 01:26:58', '79', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '2021-12-03 17:01:43', '8', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '1971-06-17 21:50:37', '17', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '2002-01-04 15:08:00', '13', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '2010-04-23 15:01:42', '89', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '1973-01-06 15:44:22', '5', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '1986-03-17 20:05:11', '98', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '2010-05-07 19:21:19', '53', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '1984-10-15 15:08:50', '26', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '2007-06-16 10:38:52', '89', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '1997-12-20 20:56:27', '29', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '2019-03-06 02:15:39', '57', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '1996-04-11 13:48:34', '58', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '2001-10-21 06:51:15', '73', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '2009-05-24 13:24:24', '29', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '2008-07-18 12:37:18', '16', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '2015-05-03 16:45:22', '65', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '1970-03-12 11:19:23', '3', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '2010-03-14 10:25:31', '93', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '1971-12-22 10:54:43', '9', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '1990-09-06 16:20:16', '81', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'sent', '2022-08-23 01:40:10', '5', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '2002-05-14 19:07:22', '49', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '2020-11-27 23:34:19', '83', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '2010-09-28 17:00:11', '39', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '2008-05-13 23:32:57', '5', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '1994-02-24 12:37:19', '84', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '2000-04-01 17:42:40', '59', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '2007-02-05 00:21:17', '71', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '1972-12-11 05:48:13', '43', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '2004-12-11 08:42:39', '36', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '2004-08-24 00:11:17', '37', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '1973-11-28 13:35:17', '88', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '1984-02-19 06:51:46', '68', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '1980-01-04 06:25:10', '95', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '1981-07-02 19:49:49', '69', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '1970-10-10 18:21:50', '99', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '2023-11-15 09:57:43', '1', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '1976-08-25 09:42:23', '29', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '1994-02-18 03:32:24', '2', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '2020-04-04 05:13:09', '45', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '1998-01-05 14:09:16', '80', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '2012-03-25 23:04:04', '12', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '1977-01-22 17:39:50', '39', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '1995-02-03 21:55:41', '10', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '1979-09-16 02:04:02', '16', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '2009-04-07 21:50:36', '40', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'pending', '1993-01-31 08:04:41', '99', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '2003-09-07 04:14:58', '52', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '2008-04-18 13:42:27', '15', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '1993-03-12 22:53:31', '7', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '1996-11-16 12:39:12', '84', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '1972-10-31 09:20:36', '47', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '2008-02-15 16:24:58', '90', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '1971-01-08 13:13:46', '49', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '1971-05-31 16:36:43', '35', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '1976-12-24 19:52:40', '5', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '2020-01-15 13:20:12', '75', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '1997-09-30 12:33:30', '89', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'failed', '1994-07-09 11:32:40', '2', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '2013-02-28 00:25:03', '70', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '2022-02-14 06:28:09', '28', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '1977-09-09 04:03:13', '6', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '1975-11-04 11:05:21', '31', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '2017-04-18 12:19:49', '12', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '2021-02-09 09:12:39', '81', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '1981-08-04 18:06:35', '29', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'failed', '1996-09-14 03:21:09', '12', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '2016-11-29 23:50:15', '10', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'pending', '2018-05-25 09:19:09', '13', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'pending', '2019-03-08 21:51:17', '14', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '2000-01-08 06:25:02', '61', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '1978-06-25 05:49:08', '89', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '1972-03-25 14:04:20', '62', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'pending', '1975-12-15 20:04:11', '38', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '2020-08-06 14:31:08', '88', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '2020-10-11 18:45:19', '4', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '2003-05-22 17:02:40', '45', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '1999-07-24 23:26:52', '60', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '2016-06-26 13:10:31', '91', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '2006-03-17 22:18:22', '96', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '1987-05-08 10:02:43', '53', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'failed', '1997-11-03 02:30:30', '24', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '2020-01-21 23:06:06', '92', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '1992-03-03 04:35:32', '67', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '1995-10-21 20:21:44', '7', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '1990-12-15 09:39:34', '77', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '1973-08-03 21:02:44', '89', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '1990-09-28 14:45:48', '74', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '1992-05-12 10:59:23', '50', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'pending', '1991-04-18 15:58:34', '25', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '1980-04-10 22:03:50', '96', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '1991-09-06 20:14:23', '21', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '1982-11-04 08:03:12', '34', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '1987-06-15 04:21:41', '79', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'failed', '1998-01-31 23:09:42', '41', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '1997-12-09 05:26:25', '76', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '2011-11-28 05:03:23', '8', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'failed', '1974-04-06 18:58:42', '22', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'sent', '2015-04-06 16:59:34', '5', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'pending', '2023-05-26 21:50:43', '50', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '1984-01-30 22:22:39', '96', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '2019-10-19 00:45:31', '99', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '1984-08-20 21:21:25', '93', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'sent', '1988-01-02 21:43:43', '56', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'sent', '1970-09-16 10:27:14', '35', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '2023-09-29 20:30:17', '83', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'sent', '2005-09-25 14:35:21', '27', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '1992-08-22 02:30:44', '86', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'pending', '1996-05-15 23:38:51', '52', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '2013-12-04 04:43:05', '33', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '1980-03-19 20:08:35', '32', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '1976-10-06 14:25:06', '76', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'failed', '2004-09-22 10:41:01', '41', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '2019-03-04 13:26:42', '36', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (6, 'sent', '2009-03-01 19:28:02', '13', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'failed', '1970-11-17 16:22:41', '19', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '1981-02-11 09:03:04', '70', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'pending', '1993-04-27 19:55:52', '7', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (4, 'pending', '1990-05-05 06:45:13', '63', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '1977-02-26 17:22:10', '16', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'sent', '2003-11-08 11:33:16', '69', '27823ab2-25aa-42fd-a2cc-be68ce386ba6');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'failed', '1986-12-21 13:23:38', '56', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (8, 'sent', '2008-02-05 09:37:18', '44', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'failed', '2013-11-02 19:43:42', '31', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (3, 'pending', '2016-08-21 22:18:16', '54', 'd1e606b0-0452-46a7-9190-8671a82fdea0');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '1995-10-09 02:52:07', '72', '39768e51-d795-4713-b120-3f026663ab70');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (9, 'sent', '1991-12-15 04:40:38', '68', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (2, 'pending', '2013-01-26 15:50:02', '77', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (5, 'pending', '2011-03-05 08:42:54', '37', '0080a025-6ee9-43b3-b857-1d4fe65f73d5');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (1, 'pending', '2013-03-13 05:06:45', '19', 'd8cbc1f4-51b3-4423-9676-2a0212ac66f8');
INSERT INTO notifications_notificationtouser (retry_count, status, last_update, notification_id, user_id)
VALUES (7, 'sent', '2002-02-01 17:50:30', '24', 'd1e606b0-0452-46a7-9190-8671a82fdea0');