-- 初期データを登録する。
/*
 * 管理部署テーブルに管理部署を登録する。
 */
INSERT INTO admin_departments (admin_department_id, admin_department_name, admin_department_authority, admin_department_status) VALUES(1, 'システム管理部', '9', '1');

/*
 * 管理者テーブルに管理者を登録する。
 */
INSERT INTO admins (admin_id, admin_last_name, admin_first_name, admin_last_name_kana, admin_first_name_kana, admin_department_id, admin_mail_address, admin_password, admin_authority, admin_status)
VALUES(1, 'システム', '太郎', 'システム', 'タロウ', 1, 'user@mail.example.com', '8afbc09e0ec392a887bac4be8e197c9e81ac0c9eedec70173b258cfe708b1c84', '9', '1');

/*
 * 性別テーブルに性別を登録する。
 */
INSERT INTO sexes (sex_id, sex_name) VALUES(1, '男性');
INSERT INTO sexes (sex_id, sex_name) VALUES(2, '女性');
INSERT INTO sexes (sex_id, sex_name) VALUES(3, 'その他');

/*
 * 都道府県テーブルに47都道府県を登録する。
 */
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(1, '北海道');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(2, '青森県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(3, '岩手県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(4, '宮城県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(5, '秋田県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(6, '山形県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(7, '福島県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(8, '茨城県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(9, '栃木県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(10, '群馬県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(11, '埼玉県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(12, '千葉県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(13, '東京都');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(14, '神奈川県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(15, '新潟県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(16, '富山県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(17, '石川県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(18, '福井県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(19, '山梨県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(20, '長野県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(21, '岐阜県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(22, '静岡県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(23, '愛知県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(24, '三重県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(25, '滋賀県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(26, '京都府');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(27, '大阪府');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(28, '兵庫県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(29, '奈良県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(30, '和歌山県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(31, '鳥取県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(32, '島根県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(33, '岡山県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(34, '広島県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(35, '山口県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(36, '徳島県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(37, '香川県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(38, '愛媛県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(39, '高知県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(40, '福岡県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(41, '佐賀県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(42, '長崎県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(43, '熊本県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(44, '大分県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(45, '宮崎県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(46, '鹿児島県');
INSERT INTO prefectures (prefecture_id, prefecture_name) VALUES(47, '沖縄県');

/*
 * カテゴリーテーブルにアカウント種別を登録する。
 */
INSERT INTO categories (category_id, category_name, category_status) VALUES(1, '文化', '1');
INSERT INTO categories (category_id, category_name, category_status) VALUES(2, 'スポーツ', '1');

/*
 * 申込ステータステーブルに申込ステータスを登録する。
 */
INSERT INTO entry_statuses (entry_status_id, entry_status_name) VALUES(1, '申込済');
INSERT INTO entry_statuses (entry_status_id, entry_status_name) VALUES(2, '連絡済');
INSERT INTO entry_statuses (entry_status_id, entry_status_name) VALUES(3, 'キャンセル済');

/*
 * お問合せステータステーブルにお問合せステータスを登録する。
 */
INSERT INTO contact_statuses (contact_status_id, contact_status_name) VALUES(1, '受付済');
INSERT INTO contact_statuses (contact_status_id, contact_status_name) VALUES(2, '連絡済');

/*
 * アカウント作成完了時に送信されるメールのテンプレートを登録する。
 */
INSERT INTO mail_templetes (mail_templete_id, mail_templete_name, mail_templete_subject, mail_templete_header, mail_templete_footer)
VALUES(1, 'アカウント作成完了通知', 'School Serachにアカウントを作成しました。', 'School Searchにアカウントを作成しました。', 'このメールは送信専用です。'||CHR(13)||CHR(10)||'スクール検索サイト School Serach：http://localhost:8080/school-search/');

/*
 * パスワード再発行申請完了時に送信されるメールのテンプレートを登録する。
 */
INSERT INTO mail_templetes (mail_templete_id, mail_templete_name, mail_templete_subject, mail_templete_header, mail_templete_footer)
VALUES(2, 'パスワード再発行申請受付完了通知', 'パスワード再発行の申請を受け付けました。', 'パスワード再発行の申請を受け付けました', 'このメールは送信専用です。'||CHR(13)||CHR(10)||'スクール検索サイト School Serach：http://localhost:8080/school-search/');

/*
 * 退会完了時に送信されるメールのテンプレートを登録する。
 */
INSERT INTO mail_templetes (mail_templete_id, mail_templete_name, mail_templete_subject, mail_templete_header, mail_templete_footer)
VALUES(3, '退会完了通知', 'School Serachから退会しました。', 'School Searchから退会しました。', 'このメールは送信専用です。'||CHR(13)||CHR(10)||'スクール検索サイト School Serach：http://localhost:8080/school-search/');

/*
 * スクール申込時に申込アカウントに送信されるメールのテンプレートを登録する。
 */
INSERT INTO mail_templetes (mail_templete_id, mail_templete_name, mail_templete_subject, mail_templete_header, mail_templete_footer)
VALUES(4, '申込完了通知', 'スクールへの申込が完了しました。', 'スクールへの申込が完了しました。', 'このメールは送信専用です。'||CHR(13)||CHR(10)||'スクール検索サイト School Serach：http://localhost:8080/school-search/');

/*
 * スクール申込時にスクール登録者アカウントに送信されるメールのテンプレートを登録する。
 */
INSERT INTO mail_templetes (mail_templete_id, mail_templete_name, mail_templete_subject, mail_templete_header, mail_templete_footer)
VALUES(5, '申込受付通知', 'スクールに申込がありました。', 'スクールに申込がありました。', 'このメールは送信専用です。'||CHR(13)||CHR(10)||'スクール検索サイト School Serach：http://localhost:8080/school-search/');

/*
 * 申込キャンセル時に申込アカウントに送信されるメールのテンプレートを登録する。
 */
INSERT INTO mail_templetes (mail_templete_id, mail_templete_name, mail_templete_subject, mail_templete_header, mail_templete_footer)
VALUES(6, '申込キャンセル完了通知', '申込のキャンセルが完了しました。', '申込のキャンセルが完了しました。', 'このメールは送信専用です。'||CHR(13)||CHR(10)||'スクール検索サイト School Serach：http://localhost:8080/school-search/');

/*
 * 申込キャンセル時にスクール登録者アカウントに送信されるメールのテンプレートを登録する。
 */
INSERT INTO mail_templetes (mail_templete_id, mail_templete_name, mail_templete_subject, mail_templete_header, mail_templete_footer)
VALUES(7, '申込キャンセル受付通知', '申込がキャンセルされました。', '申込がキャンセルされました。', 'このメールは送信専用です。'||CHR(13)||CHR(10)||'スクール検索サイト School Serach：http://localhost:8080/school-search/');

/*
 * メッセージ送信時に受信アカウントに送信されるメールのテンプレートを登録する。
 */
INSERT INTO mail_templetes (mail_templete_id, mail_templete_name, mail_templete_subject, mail_templete_header, mail_templete_footer)
VALUES(8, 'メッセージ受信通知', 'メッセージを受信しました。', 'メッセージを受信しました。', 'このメールは送信専用です。'||CHR(13)||CHR(10)||'スクール検索サイト School Serach：http://localhost:8080/school-search/');

/*
 * お問合せ送信時にお問合せアカウントに送信されるメールのテンプレートを登録する。
 */
INSERT INTO mail_templetes (mail_templete_id, mail_templete_name, mail_templete_subject, mail_templete_header, mail_templete_footer)
VALUES(9, 'お問合せ受付完了通知', 'お問合せを受け付けました。', 'お問合せを受け付けました。', 'このメールは送信専用です。'||CHR(13)||CHR(10)||'スクール検索サイト School Serach：http://localhost:8080/school-search/');

/*
 * お問合せ送信時にサービス管理アカウントに送信されるメールのテンプレートを登録する。
 */
INSERT INTO mail_templetes (mail_templete_id, mail_templete_name, mail_templete_subject, mail_templete_header, mail_templete_footer)
VALUES(10, 'お問合せ受付通知', 'お問合せがありました。', 'お問合せがありました。', 'このメールは送信専用です。'||CHR(13)||CHR(10)||'スクール検索サイト School Serach：http://localhost:8080/school-search/');
