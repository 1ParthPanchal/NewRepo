--
-- File generated with SQLiteStudio v3.4.1 on Sat Mar 11 17:21:36 2023
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: android_metadata
DROP TABLE IF EXISTS android_metadata;

CREATE TABLE IF NOT EXISTS android_metadata (
    locale TEXT
);

INSERT INTO android_metadata (
                                 locale
                             )
                             VALUES (
                                 'en_GB'
                             );


-- Table: app_users
DROP TABLE IF EXISTS app_users;

CREATE TABLE IF NOT EXISTS app_users (
    id        INTEGER NOT NULL
                      PRIMARY KEY AUTOINCREMENT,
    id_user   INTEGER NOT NULL,
    user_type INTEGER NOT NULL,
    id_firm   INTEGER NOT NULL,
    CONSTRAINT fk_app_users_id_firm_firms_id FOREIGN KEY (
        id_firm
    )
    REFERENCES firms (id) 
);

INSERT INTO app_users (
                          id,
                          id_user,
                          user_type,
                          id_firm
                      )
                      VALUES (
                          1,
                          1,
                          2,
                          1
                      );

INSERT INTO app_users (
                          id,
                          id_user,
                          user_type,
                          id_firm
                      )
                      VALUES (
                          2,
                          1,
                          2,
                          1
                      );

INSERT INTO app_users (
                          id,
                          id_user,
                          user_type,
                          id_firm
                      )
                      VALUES (
                          3,
                          1,
                          2,
                          1
                      );

INSERT INTO app_users (
                          id,
                          id_user,
                          user_type,
                          id_firm
                      )
                      VALUES (
                          4,
                          1,
                          2,
                          1
                      );

INSERT INTO app_users (
                          id,
                          id_user,
                          user_type,
                          id_firm
                      )
                      VALUES (
                          5,
                          1,
                          4,
                          1
                      );

INSERT INTO app_users (
                          id,
                          id_user,
                          user_type,
                          id_firm
                      )
                      VALUES (
                          6,
                          1,
                          3,
                          1
                      );

INSERT INTO app_users (
                          id,
                          id_user,
                          user_type,
                          id_firm
                      )
                      VALUES (
                          7,
                          1,
                          2,
                          1
                      );

INSERT INTO app_users (
                          id,
                          id_user,
                          user_type,
                          id_firm
                      )
                      VALUES (
                          8,
                          1,
                          2,
                          2
                      );


-- Table: audio
DROP TABLE IF EXISTS audio;

CREATE TABLE IF NOT EXISTS audio (
    id         INTEGER PRIMARY KEY AUTOINCREMENT,
    audio_path TEXT,
    is_deleted INTEGER DEFAULT (0),
    id_firm    INTEGER CONSTRAINT fk_audio_id_firm_firms_id REFERENCES firms (id) 
);

INSERT INTO audio (
                      id,
                      audio_path,
                      is_deleted,
                      id_firm
                  )
                  VALUES (
                      1,
                      'document/audio/hello.mp4',
                      0,
                      1
                  );

INSERT INTO audio (
                      id,
                      audio_path,
                      is_deleted,
                      id_firm
                  )
                  VALUES (
                      2,
                      'file:////data/user/0/com.sts/cache/sound.mp4',
                      0,
                      1
                  );

INSERT INTO audio (
                      id,
                      audio_path,
                      is_deleted,
                      id_firm
                  )
                  VALUES (
                      3,
                      'file:////data/user/0/com.sts/cache/sound.mp4',
                      0,
                      1
                  );

INSERT INTO audio (
                      id,
                      audio_path,
                      is_deleted,
                      id_firm
                  )
                  VALUES (
                      4,
                      'file:////data/user/0/com.sts/cache/sound.mp4',
                      0,
                      1
                  );

INSERT INTO audio (
                      id,
                      audio_path,
                      is_deleted,
                      id_firm
                  )
                  VALUES (
                      5,
                      'documents/audio/sound.mp4',
                      0,
                      1
                  );


-- Table: custom_pettern
DROP TABLE IF EXISTS custom_pettern;

CREATE TABLE IF NOT EXISTS custom_pettern (
    id       INTEGER PRIMARY KEY AUTOINCREMENT
                     NOT NULL,
    name     TEXT,
    id_firms INTEGER CONSTRAINT fk_id_firms_fk_firms_id REFERENCES firms (id) 
);

INSERT INTO custom_pettern (
                               id,
                               name,
                               id_firms
                           )
                           VALUES (
                               1,
                               'Chudidar',
                               1
                           );

INSERT INTO custom_pettern (
                               id,
                               name,
                               id_firms
                           )
                           VALUES (
                               2,
                               'Gown',
                               2
                           );

INSERT INTO custom_pettern (
                               id,
                               name,
                               id_firms
                           )
                           VALUES (
                               3,
                               'PLazo',
                               2
                           );

INSERT INTO custom_pettern (
                               id,
                               name,
                               id_firms
                           )
                           VALUES (
                               4,
                               'Choli',
                               1
                           );


-- Table: customers
DROP TABLE IF EXISTS customers;

CREATE TABLE IF NOT EXISTS customers (
    id            INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name    TEXT    NOT NULL,
    last_name     TEXT    NOT NULL,
    mobile_number NUMBER  NOT NULL,
    gender        INTEGER NOT NULL,
    dob           TEXT,
    doa           TEXT,
    email         TEXT,
    created_by    TEXT    CONSTRAINT fk_customers_created_by_app_users_id REFERENCES app_users (id) 
                          NOT NULL,
    created_date  TEXT    NOT NULL,
    modify_by     TEXT    CONSTRAINT fk_customers_modify_by_app_users_id REFERENCES app_users (id),
    modified_date TEXT,
    id_firm       INTEGER,
    is_deleted    INTEGER DEFAULT (0) 
);

INSERT INTO customers (
                          id,
                          first_name,
                          last_name,
                          mobile_number,
                          gender,
                          dob,
                          doa,
                          email,
                          created_by,
                          created_date,
                          modify_by,
                          modified_date,
                          id_firm,
                          is_deleted
                      )
                      VALUES (
                          1,
                          'Parth',
                          'Patel',
                          1234569870,
                          'Male',
                          '01/09/2000',
                          '01/09/2022',
                          'dpisparth',
                          '1',
                          '',
                          NULL,
                          '',
                          NULL,
                          0
                      );

INSERT INTO customers (
                          id,
                          first_name,
                          last_name,
                          mobile_number,
                          gender,
                          dob,
                          doa,
                          email,
                          created_by,
                          created_date,
                          modify_by,
                          modified_date,
                          id_firm,
                          is_deleted
                      )
                      VALUES (
                          2,
                          'Parth',
                          'Patel',
                          1234569870,
                          'Male',
                          '01/09/2000',
                          '01/09/2022',
                          'dpisparth',
                          '1',
                          '',
                          NULL,
                          '',
                          NULL,
                          0
                      );

INSERT INTO customers (
                          id,
                          first_name,
                          last_name,
                          mobile_number,
                          gender,
                          dob,
                          doa,
                          email,
                          created_by,
                          created_date,
                          modify_by,
                          modified_date,
                          id_firm,
                          is_deleted
                      )
                      VALUES (
                          3,
                          'Parth',
                          'Patel',
                          1234569870,
                          'Male',
                          '01/09/2000',
                          '01/09/2022',
                          'dpisparth',
                          '1',
                          '',
                          NULL,
                          '',
                          NULL,
                          0
                      );

INSERT INTO customers (
                          id,
                          first_name,
                          last_name,
                          mobile_number,
                          gender,
                          dob,
                          doa,
                          email,
                          created_by,
                          created_date,
                          modify_by,
                          modified_date,
                          id_firm,
                          is_deleted
                      )
                      VALUES (
                          4,
                          'Parth',
                          'Patel',
                          1234569870,
                          'Male',
                          '01/09/2000',
                          '01/09/2022',
                          'dpisparth',
                          '1',
                          '',
                          NULL,
                          '',
                          NULL,
                          0
                      );

INSERT INTO customers (
                          id,
                          first_name,
                          last_name,
                          mobile_number,
                          gender,
                          dob,
                          doa,
                          email,
                          created_by,
                          created_date,
                          modify_by,
                          modified_date,
                          id_firm,
                          is_deleted
                      )
                      VALUES (
                          5,
                          'Mark',
                          'Andreson',
                          1234567890,
                          1,
                          '15/08/1984',
                          '09/12/2008',
                          'mark@sts.com',
                          '1',
                          '01/09/2000',
                          NULL,
                          NULL,
                          1,
                          0
                      );

INSERT INTO customers (
                          id,
                          first_name,
                          last_name,
                          mobile_number,
                          gender,
                          dob,
                          doa,
                          email,
                          created_by,
                          created_date,
                          modify_by,
                          modified_date,
                          id_firm,
                          is_deleted
                      )
                      VALUES (
                          6,
                          'Kunj',
                          'Patel',
                          1234567890,
                          1,
                          '2023-02-01',
                          '2023-02-02',
                          'kp123@dpis.com',
                          '1',
                          '2023-02-27 10:29:56',
                          NULL,
                          NULL,
                          1,
                          0
                      );


-- Table: favourite_images
DROP TABLE IF EXISTS favourite_images;

CREATE TABLE IF NOT EXISTS favourite_images (
    id       INTEGER PRIMARY KEY AUTOINCREMENT,
    id_image INTEGER REFERENCES images (id),
    id_firm  INTEGER NOT NULL
                     REFERENCES firms (id) 
);

INSERT INTO favourite_images (
                                 id,
                                 id_image,
                                 id_firm
                             )
                             VALUES (
                                 2,
                                 1,
                                 2
                             );

INSERT INTO favourite_images (
                                 id,
                                 id_image,
                                 id_firm
                             )
                             VALUES (
                                 3,
                                 2,
                                 1
                             );

INSERT INTO favourite_images (
                                 id,
                                 id_image,
                                 id_firm
                             )
                             VALUES (
                                 5,
                                 1,
                                 2
                             );

INSERT INTO favourite_images (
                                 id,
                                 id_image,
                                 id_firm
                             )
                             VALUES (
                                 6,
                                 2,
                                 1
                             );


-- Table: firms
DROP TABLE IF EXISTS firms;

CREATE TABLE IF NOT EXISTS firms (
    id INTEGER NOT NULL
             PRIMARY KEY AUTOINCREMENT
);

INSERT INTO firms (
                      id
                  )
                  VALUES (
                      1
                  );

INSERT INTO firms (
                      id
                  )
                  VALUES (
                      2
                  );

INSERT INTO firms (
                      id
                  )
                  VALUES (
                      3
                  );

INSERT INTO firms (
                      id
                  )
                  VALUES (
                      4
                  );

INSERT INTO firms (
                      id
                  )
                  VALUES (
                      5
                  );

INSERT INTO firms (
                      id
                  )
                  VALUES (
                      6
                  );

INSERT INTO firms (
                      id
                  )
                  VALUES (
                      7
                  );

INSERT INTO firms (
                      id
                  )
                  VALUES (
                      8
                  );

INSERT INTO firms (
                      id
                  )
                  VALUES (
                      9
                  );

INSERT INTO firms (
                      id
                  )
                  VALUES (
                      10
                  );


-- Table: image_directory
DROP TABLE IF EXISTS image_directory;

CREATE TABLE IF NOT EXISTS image_directory (
    id             INTEGER PRIMARY KEY AUTOINCREMENT,
    directory_name TEXT,
    is_master      INTEGER,
    id_firms       INTEGER DEFAULT (0),
    is_deleted     INTEGER DEFAULT (0),
    gender         INTEGER
);

INSERT INTO image_directory (
                                id,
                                directory_name,
                                is_master,
                                id_firms,
                                is_deleted,
                                gender
                            )
                            VALUES (
                                1,
                                'Shirt',
                                1,
                                NULL,
                                0,
                                1
                            );

INSERT INTO image_directory (
                                id,
                                directory_name,
                                is_master,
                                id_firms,
                                is_deleted,
                                gender
                            )
                            VALUES (
                                3,
                                'Plazo',
                                0,
                                2,
                                1,
                                1
                            );

INSERT INTO image_directory (
                                id,
                                directory_name,
                                is_master,
                                id_firms,
                                is_deleted,
                                gender
                            )
                            VALUES (
                                4,
                                'pants',
                                1,
                                1,
                                NULL,
                                1
                            );

INSERT INTO image_directory (
                                id,
                                directory_name,
                                is_master,
                                id_firms,
                                is_deleted,
                                gender
                            )
                            VALUES (
                                5,
                                'Shorts',
                                1,
                                1,
                                NULL,
                                1
                            );

INSERT INTO image_directory (
                                id,
                                directory_name,
                                is_master,
                                id_firms,
                                is_deleted,
                                gender
                            )
                            VALUES (
                                6,
                                'Chudidar',
                                1,
                                1,
                                NULL,
                                1
                            );

INSERT INTO image_directory (
                                id,
                                directory_name,
                                is_master,
                                id_firms,
                                is_deleted,
                                gender
                            )
                            VALUES (
                                7,
                                'Frock',
                                1,
                                1,
                                NULL,
                                1
                            );

INSERT INTO image_directory (
                                id,
                                directory_name,
                                is_master,
                                id_firms,
                                is_deleted,
                                gender
                            )
                            VALUES (
                                8,
                                'Kurti',
                                1,
                                1,
                                NULL,
                                1
                            );

INSERT INTO image_directory (
                                id,
                                directory_name,
                                is_master,
                                id_firms,
                                is_deleted,
                                gender
                            )
                            VALUES (
                                9,
                                'Night gown',
                                1,
                                1,
                                NULL,
                                2
                            );

INSERT INTO image_directory (
                                id,
                                directory_name,
                                is_master,
                                id_firms,
                                is_deleted,
                                gender
                            )
                            VALUES (
                                10,
                                'Salwar Kamees',
                                1,
                                1,
                                NULL,
                                2
                            );

INSERT INTO image_directory (
                                id,
                                directory_name,
                                is_master,
                                id_firms,
                                is_deleted,
                                gender
                            )
                            VALUES (
                                11,
                                'Saree Blouse',
                                1,
                                1,
                                NULL,
                                2
                            );

INSERT INTO image_directory (
                                id,
                                directory_name,
                                is_master,
                                id_firms,
                                is_deleted,
                                gender
                            )
                            VALUES (
                                12,
                                'Under Skirt',
                                1,
                                1,
                                NULL,
                                2
                            );

INSERT INTO image_directory (
                                id,
                                directory_name,
                                is_master,
                                id_firms,
                                is_deleted,
                                gender
                            )
                            VALUES (
                                13,
                                'Gown',
                                0,
                                1,
                                NULL,
                                NULL
                            );

INSERT INTO image_directory (
                                id,
                                directory_name,
                                is_master,
                                id_firms,
                                is_deleted,
                                gender
                            )
                            VALUES (
                                14,
                                'Plazo',
                                0,
                                1,
                                NULL,
                                NULL
                            );

INSERT INTO image_directory (
                                id,
                                directory_name,
                                is_master,
                                id_firms,
                                is_deleted,
                                gender
                            )
                            VALUES (
                                15,
                                'Choli',
                                0,
                                2,
                                NULL,
                                NULL
                            );

INSERT INTO image_directory (
                                id,
                                directory_name,
                                is_master,
                                id_firms,
                                is_deleted,
                                gender
                            )
                            VALUES (
                                16,
                                'pants',
                                1,
                                NULL,
                                NULL,
                                NULL
                            );

INSERT INTO image_directory (
                                id,
                                directory_name,
                                is_master,
                                id_firms,
                                is_deleted,
                                gender
                            )
                            VALUES (
                                17,
                                'Shorts',
                                1,
                                NULL,
                                NULL,
                                NULL
                            );

INSERT INTO image_directory (
                                id,
                                directory_name,
                                is_master,
                                id_firms,
                                is_deleted,
                                gender
                            )
                            VALUES (
                                18,
                                'Chudidar',
                                1,
                                NULL,
                                NULL,
                                NULL
                            );

INSERT INTO image_directory (
                                id,
                                directory_name,
                                is_master,
                                id_firms,
                                is_deleted,
                                gender
                            )
                            VALUES (
                                19,
                                'Frock',
                                1,
                                NULL,
                                NULL,
                                NULL
                            );

INSERT INTO image_directory (
                                id,
                                directory_name,
                                is_master,
                                id_firms,
                                is_deleted,
                                gender
                            )
                            VALUES (
                                20,
                                'Kurti',
                                1,
                                NULL,
                                NULL,
                                NULL
                            );

INSERT INTO image_directory (
                                id,
                                directory_name,
                                is_master,
                                id_firms,
                                is_deleted,
                                gender
                            )
                            VALUES (
                                21,
                                'Night gown',
                                1,
                                NULL,
                                NULL,
                                2
                            );

INSERT INTO image_directory (
                                id,
                                directory_name,
                                is_master,
                                id_firms,
                                is_deleted,
                                gender
                            )
                            VALUES (
                                22,
                                'Salwar Kamees',
                                1,
                                NULL,
                                NULL,
                                2
                            );

INSERT INTO image_directory (
                                id,
                                directory_name,
                                is_master,
                                id_firms,
                                is_deleted,
                                gender
                            )
                            VALUES (
                                23,
                                'Saree Blouse',
                                1,
                                NULL,
                                NULL,
                                2
                            );

INSERT INTO image_directory (
                                id,
                                directory_name,
                                is_master,
                                id_firms,
                                is_deleted,
                                gender
                            )
                            VALUES (
                                24,
                                'Under Skirt',
                                1,
                                NULL,
                                NULL,
                                2
                            );

INSERT INTO image_directory (
                                id,
                                directory_name,
                                is_master,
                                id_firms,
                                is_deleted,
                                gender
                            )
                            VALUES (
                                25,
                                'Gown',
                                1,
                                1,
                                NULL,
                                2
                            );

INSERT INTO image_directory (
                                id,
                                directory_name,
                                is_master,
                                id_firms,
                                is_deleted,
                                gender
                            )
                            VALUES (
                                26,
                                'Plazo',
                                1,
                                1,
                                NULL,
                                2
                            );

INSERT INTO image_directory (
                                id,
                                directory_name,
                                is_master,
                                id_firms,
                                is_deleted,
                                gender
                            )
                            VALUES (
                                27,
                                'Choli',
                                1,
                                2,
                                NULL,
                                2
                            );


-- Table: image_type
DROP TABLE IF EXISTS image_type;

CREATE TABLE IF NOT EXISTS image_type (
    id   INTEGER PRIMARY KEY
                 NOT NULL,
    name TEXT
);

INSERT INTO image_type (
                           id,
                           name
                       )
                       VALUES (
                           1,
                           'master_display'
                       );

INSERT INTO image_type (
                           id,
                           name
                       )
                       VALUES (
                           2,
                           'custom_display'
                       );

INSERT INTO image_type (
                           id,
                           name
                       )
                       VALUES (
                           3,
                           'user_profile'
                       );

INSERT INTO image_type (
                           id,
                           name
                       )
                       VALUES (
                           4,
                           'gallery_display_image'
                       );


-- Table: images
DROP TABLE IF EXISTS images;

CREATE TABLE IF NOT EXISTS images (
    id                         INTEGER PRIMARY KEY AUTOINCREMENT,
    images_path                TEXT,
    image_type                 INTEGER,
    reference                  INTEGER,
    id_image_directory         INTEGER CONSTRAINT fk_id_image_directory_image_directory REFERENCES image_directory (id),
    id_firm                    INTEGER CONSTRAINT fk_id_firm_firm_id REFERENCES firms (id),
    is_visible                 INTEGER,
    is_deleted                 INTEGER DEFAULT (0),
    is_favourite               INTEGER DEFAULT (0),
    gender                     INTEGER,
    gallery_pattern_image_path TEXT
);

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       1,
                       '',
                       NULL,
                       NULL,
                       NULL,
                       NULL,
                       NULL,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       2,
                       '',
                       NULL,
                       NULL,
                       NULL,
                       NULL,
                       NULL,
                       1,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       4,
                       '',
                       1,
                       1,
                       3,
                       2,
                       NULL,
                       1,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       5,
                       'documents/images/gallery_display_images/img_1.png',
                       2,
                       NULL,
                       1,
                       NULL,
                       NULL,
                       1,
                       NULL,
                       NULL,
                       'https://www.transparentpng.com/thumb/shirt/kXy7FB-yellow-shirt-clipart-png-file.png'
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       6,
                       '',
                       1,
                       NULL,
                       1,
                       NULL,
                       NULL,
                       1,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       7,
                       'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVEhgSFBUYGBgYGBgYGRgYGBgYGRgYGBoZGhgYGhgcIS4lHB4rIRoYJjgmKy8xNTU1GiQ7QDszPy40NTEBDAwMEA8QHhISGjQhJCQ0NDQ0NDQ0NDQxNDQ0NDQ0NDQ0NDQ0NDQxNDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIAQMAwgMBIgACEQEDEQH/xAAbAAACAgMBAAAAAAAAAAAAAAAAAQIDBAUGB//EADwQAAEDAgMEBwUGBgMBAAAAAAEAAhEDIQQSMQVBUWEGInGBkaHBEzKx0fAHI0JScuEUM2KCkqKywvHS/8QAGAEBAAMBAAAAAAAAAAAAAAAAAAECAwT/xAAhEQEBAAICAwADAQEAAAAAAAAAAQIRAzESIUEiMlFhE//aAAwDAQACEQMRAD8A7JCEIBCEIPP/ALTNofy8M0/1vAPGWsBH+R8FwdGlMncNXegXRfaBQf8Axj3HRwZlI/KGgDzzLnsHQqVXCkxkjgPMqlaRTWxb39RpIG4Am6rZQdv0+rrvNn9DXiHOaJgiIg3Gq2FboDVc4AmG6mAq+U+L+F+vMMOSHfW5ZTSTIHEEcp19Cu/f9nrgDD/JZOD6FNYQXGVX/pEzirzcl2cEWIvwgr3TAE+yYXEE5GSRoTlEkLzvpbsllJ7ajBGax7RoV2nRV5dg6RO4Fvc1zgPIBa45bZZ46bhJCSuoaSEkAkhJAJISJQMpEpFRQSJUSiUpUAQkhSM5CEKoEIQpHC/aLhiPZ1hoeo7tEub6/wCK0vQuoGYhpMdYxK7npbg/a4N7BdwAezjLDJA7RmHeuO6IbLNZ562UMgm2t9OV/gss/rbj36es0osVll9lp2YhjGjO8ADe4xoqX9K8E3quxNIH9bfQrDHbouvrZ1QsWsxRG16bqftGEPbrmBaR4grgOkf2hZHFlFgc7eS6w4boJi8c0xxtvouUxm62vSzBGpTIGrZcPBbHo05owtJgIJDGFwB0Lxmv/kvMm9NMU99yw8i0nzkLrvs+xTXte0DKWDKWXIuZDwTx4TuW+MuPphn45TbtEk0lswJIpqJQCRTSKBEoQkVARSQkpAkhIqAkIlCDYIQhAIQhAsgkHh6rUMwpZiXVKbAz2lOSwwA8sdlJESGmC3603Ep4h4IadSJjiAdR2WHgFhyY6u/66uLKXHV+PHelpr1a1TMczWve1rZIa1rXENAbxtqb6rmHYR4/DC9b6Q7GeXuqMYXtf1iGiS1x16ouQTeRxPfzLNjVHuyim9vMscI7jF/BRM9Qy491nfZNgvaNxLHglgDIB0zOzExzgDxXPdJ+j5pYqo2SWlxc0m5IO8njK9Z6J7NbhqGSMpc4vdJ36CTvMALA6TYei+oA5zSdSAbxxCr5+9xe4fjp447DlhXf/Zng3tFWq4EB+UNneBefM+CyqnRSgIc7M8agOMD/AFie9dRsxjW0mtaAALAAQLWFlphl5VjnPHFlpFCRW7AikUyolAFIoSKAlIlJIlAFJBKigEiU1EoGhKUkGzQhCgCEIQCThZNCBMcsmixovZYRflJnT4SrHO6pAK48sdV3YZbh47BU3vFRziMo/OWsvvImJXO4nC4anU9oHsLyLy6T3ElZm0cCXgSXv4APLADxGWPNanDdH5fnNINvcmXExvl10ljTU1u1m1MU14GXSy2uCbFNvZPjcLndsYkUWzAsLNnKCeE7u1ZfRjb/APFNMsFN7b5A7MMu4gwOw9o4rXi05Oat6kUFIroYEUkFBQIqJTKigColMqJUBJSgpFAFIoKSkOUkpQg2qEIUAQhCAQhYuP2hToMz1Xhg3TqTwAFyUGQ4TbcQQtO99Sm4wC9o3bx2cVz56Wl+OpNbLaIfkg2Ly8ZQ4jd1ojkea7DGOg5hrHiuXOzy3HVxz8dFhukFMC5A5OsfNa3afShjWuLXSb6ep3LU12hznVKsNaDAm8D1J4BcxtV/tHQ1pawaN3nm5RKnK+LF2ttl2IqR+EHx/ZZOxsW6jUbUYbgiR+Ztsze9YIwA7FksZbn5dqvv+Mbu9vV6Fdr2h7HBzSJBBB+G9SK84wFV9M52PLDv4EcxoV1mzdvNeMtSGO0n8J/+e9a48kvpS42N0UiiUitFSKRQUiUCKiUyVElQGoykUkDKSCVGUAhCEG2TSQgaElrtsbR9kzqwXunKDuA1dCi2SbqZNsjHY5lJsvNz7rR7zjyHqbLzDpbjHVq5cZEWDdQ1o3DvkkrZ1cUX1M73SbSSe833Bc6X1XV6hb1qOfR0gFwiSw6tMzcWveVjcrl/kXk0nsTCe1xDAdGEPd/aer3lwHgV3PSfb38PSZADnvbIaTAgWLjykRG+653YcNxAboHtEbjLSQR5+ax9u4lr6j6kNyg5GGZOVstGnuj3jxus+62t8cdz6hh8e7EP+9c0GZYGkgAASQAdTv8A/FmBgNxfmtPs/Cuf944EAe6N/b5rd0WiCT1SBuj1mZTLXxlu3ti4ghtoOYmGjc4n4DeeQKvoUIF9dSeJUqeG6xqOPW0A3NG8Dmd59Ar4UW/ExB7QbR8FB7SBAE+ivyqsPvHz77qEtlsnbLmDI+XNG8XLeXMLpKVZr2hzTIO9cP7ETcTy3f46eKtoYl9Nwcx0Xu38LuRGnetsOTXqqXF2xKiSqcLiW1GB7dDu3g7wVYSt9swSkSkUkDlKUkiUASokoKiUDlNQlCDdoQhALg9q4zPiC+ermexv6WnL8Wk967jEPysc78rXHwBK81YCaTCef+0O9VjzX1Ivinly1wN2vqrsTRGW1o3D0VOO0ZUGrbFZFn04MwRuj1WC7U4skVqZYbsY4ydJJa0aa3k9yqdgi+o0PJMWiIbA1cL33BZVLCO9pfcMp1vlzGbWEh/Z6ZmGZJJE8BMSOItyAVrddHa1tMBoA+ggNU3XMBDWwqJI6JsbvPdzTa2dU6lQAZjuQRe+O1QAA0VJc7NJ11iJgbh2qVXSOKlCb3WVb1Ux+Z07hZo7NSrHoNx0exIDjTP4rjm4a95H/Fb4rh6FYtcCNQQR2hdnQrB7GvGjgD4jRdPHluaZ5RbKiSkSokrRUyVElBKjKBkqJKCVElBKUKEoUjfoQhQMbaAmjUHGm/8A4lcK9kU44O/ZegVRLSOII8QuEPuHtXPzdxfFjhuZpbxHnuWLhnwHMO6fDespllDEU4e2oOIB71lF1j3kMfmIh1hFzf3bdkJYeQwcXX42/dSewOLWXAF+B4CZ5KVeoGyfK9h6IGxu7uVhbKhgBN5B7J79yvruj3Y8CfgFVKpx3DdqqqkE5j7rfNSpVYjMBftHDdH1BWBtatmikzeYPqrSC/Cvzy+DfQ8hoo13zp2D1KowriJaNLgcJDgPRWm53Abifkp+oWUmQEOTDd5J+Hkk5QMPEctRddX0eqZsM0zN3Ds6xMea5itqtx0ScQyqzc14I7HNHyC2477UydCVElIlIlbqAlIlIlRJQMlRJSJUSUEpQoyhB0iSEIIv0PYVwjj1YXb4p0U3ngx3wK4dxXPz9xfBU5TaRHW0+o84Q8IYARBjv4b1i0VYMEnMRETx1JPHlH1qYYh1Q5nAEgiDYSNw+uCuEkHtMczoO6AFBmGgTJHfe94Cm1CNSm4VAGiGxJdo0zwOhunUNICXubPIzHblVtdogZSQ7MAL85PkCsavSk+8e657bqN7SxCfvA1h6obncY4yGtEndBN+SxmVczy+DAsB6lXuYGg5XEzJJPG0/DyWLUcW07G51KvFUsFUmq9vLMOQcQD6raMpj6K0+zL1HOJk5I7gW/NbpjIEx3qMu0wP1hQcqy6+9SJUCqvqO9bzo0yG1Dxe3yY35rR1tWrf9Hz927jn/wCrR6Fa8famXTbEqBKCVEldChkqJKRKRKAJSJSJUSUDlChKEHUIQhBj7SfFF5/od8IXDB0rudoEeyfOmR3wMLhmrn5u40xSzIBiRBuN3MwEwFTVxIDzTHvdU37LQY5rGe11tZ40HCIt2aK124b5vv7lU1gbHGbneT2qZPWHLxUUQfqBH4jf+0/Mquq+LDXtVlQmRzJPksfEPaNSO+CApg1+IeZiIJ5nyvdYmOqFretc6QFmFkukRpu0Wr2ldwYDJ1K0xUp7Fqn+IBOha5v+RBnxaF0WLefdbqVoqLAwt7R4rftaJJmVGXe0xSygd5lTcFcFTiKu6LcVVKmsLA8/ktlsOrFQt/M3zbceRK1tT3J+uPdodeCqwmKy1mQdXs/2IHqr4XVVrsyVElBKiSupmcqJKUqJKBkqJKRKiXIJShRzIQdYhCcINZ0hqZaJH5iB3an4LkmtXT9J2/dtP9ceR+S5YlcvL+zXHpN74CqdRaaodl60El3LTKPLwCsDdJ1Ngo0zmqOPdPEbz/qs4stcYiN8/tHmqg/rdvHRSdeTw07BuWM4GNx3akcZPmmhlVTEE7g7dHBYApg9d8yZgcAN6tfZu+4iMxMam0iyofWPPSNbXIO5TIisbEvyggb7dtgsehhgwZnarNLml0m54nzWsx9cvPsx38grz+IqDX535vwtOvHsXQOdAhgl7tODW8StK+mGsa0cQttQqnLpcgX10sPn3qMiJfwpPvPceyw8FW+qxls5PL3vgLK3LNy4nt08NFUSBYDwCqlh4zEZ2OYw+9fLBBgObPlmVvR/DB1RgMFwOY62DYO/+0d6hiGQ5rwBYOB72mPNbvo3TYGPeBLi8tLv6RGUA8FrhN3SmTdkqBKZKiSuhRElQLkyVEoAuUS5JygSglKFXKFI7ZNJDnQJO5QNN0md920f1g+TguVGq6bbV6WY6l4PdBgLmHncuPO+WW2+tejNWOtwRhpDCTqTHr6rGxLixhI4gb7zMiw4LMpE5QT2+OijXpBVTAgKsN0UXvkqTnQFCVeIN1Rkkq154qxjgFKGJimtY0uOsWWswVEkl7tTdZeJGd97gbtyrxdYMp81aIU13g1BpAnnJgrNwL8zGntb/iS30Wqw7DldUcblpgcvmVl7EqSxw/K/ycAfmrZT0idtuEnMSDwLkgdtk35yOrTe7mGEDxdAKzXktYOKJlsDRzZ7JErb9GqlntiOsHARGoj/AKhaqphap91hH6iJ8Lq7o5TrDEPzMc1sOaTlOQxliHbz+62w7Vyxsnt1JKgXJkqDit2QJUCUEqJKBEqBKcpEqUEhJCDuFRiT1Y/MY+fkrpWM85qkbmjzN/ks88tYteLHyyjA262KH9zfVcoV1fSH+Qf1N9VyGZcrbk/ZY55AJBFr8+PwBVld2VoHAQoFhgSBctHMg/RVeJfJUKI00PKQdZVVKilCNV6TGlLernugSUGE94aSStPWqGpUA3BWY2vmdlHesvZWFvmhadTava/EUwKZEXynu4aLT7ObUc406ZIL3NAgSSdAPNbLHP113cOK7LoR0a9m0V6g67rtafwNP/YjwmOKjy1F8cblXQbJ2LRpAQwF4ABe7rOPEydO5ZONAhZbyGhaPH4kmQFm6pqMDEESVTRPVHf8VCtZqlQPUC24e2PP+sSJUSUyoFdDkIqBKkVWUQRSKZSKkJCSEHbk71jUNMx1JnxVtYz1eOvZ+6re4NFzEXPILm5ct3Tr4cdTf9arpNW+7azi6e4D9wuWIi6y9pY32r3P/DOVo/pG/vmVi0zJjkY38hbthZK5XdTp4oOMQRF+WkRO/WVQ911XhqZY0ydbiJgTqk0y7sU6VWkwFRqVKo5WYalvKgFGneSsLauIhsBZ9WpuGi0G0HZ6gpt3aq2M3UVVg6WYyt9SZlZZY2HohoAW62fs91ao2mNNXHg35plU4zfpb0Z2P7Wp7R4ljCInR7xeY3gW7xyK9CpMgKnBYRrGhjRAAAA5K2u8AQq9+3VjjMZphY1877LRYmtLobosnaOL1aFpn1o01TSejxNQmGN1PlxKuaIAHBVUKWW59468uSsJXVhj4xx8uflfXROKgSpEqBV2REqJTKiVIRUSmVEogIQhB1GzsV7Sk2oSMzh1rRleLObG6CCI5LW9IcZlZ7Npu/X9P76eKnjSaFT2rfcefvG/ldFqo4aQ7uO5aHEV89RzjxMfpGi4q7crqajDxPVAHep4Rti/QXBM6W89yWJaC8E8B8Sm90SWi0cgDJi/NQxY739WJnh2KFNVtk+J+JWXTpKahCnTJKyKpgZQpF0WCqJ3qEqcTUyMJWn2e2XOqHeVftKrmOQamyyMNQytAV56iGRhmEu+u5eidH9n+zpyR1nXd8u75rVdGthEAVagvq1p3f1HmuraQAqdt8Mde6bjC0+PxWoWTja9lzuPxQCNWNiq0KGGo/jdqdBwHzSw1AuPtH6agepWW5dHHhr3XNy8m/xiJUCplQK1c6JUCpFQJQIqJUiVEqRFRKkVAoBCSEG72libPM3iAO3euWxDHAS3vC2uLJEB0ybnhu+YVDWg9i4r6dXJ2078Q7NpyV5eG+8RdsZLSb8z6FZ9V9NlzBKxq7A9ntDIIIi8AzwHGE2zU0GDXt+KyDoqqYsOxWFQAhY+IfAJVz1r8c+0cVMKowFLMTUd3di73o3sCYrVG82tO7g5w48voY/RPo31W1q43AsYfEOdz4D6HZl1raJbutsMNe6HugWWNXrwEVXrntt7SDASXARqSdFDX/S2ltAC03XGY3bGd5Ywzxdu7G/NYG0tsuquyskMOp3uHoOX/i1+CsR2rXHHTnz5N+o9F2c6aLP0x4WVzlj7K/ks7D8Sshy3x6c97RKgVMqBUoQKiVIqJQRKiVIqJQRKgVIqJUhIQhBqdg4t9WhmqOLnTEnWBKzXvMapoXJn+1b/ABgVPe71sMOwZSY/IkhVqsQZ6JlCFCVblrMWYM/W9CFpx9q5dN3sXa1ZlWnSa8hhdBbDSItYSLdy9IfqUITk7dPH01O1qhDbGF5V0nruNQNkxExzk3QhRh2cv6tbh9e4eqtp+8mhaVyvQ8B/KZ+kK5yELXHpWoFRKEKUIFRKaFIgVAoQoEColCECQhCD/9k=',
                       1,
                       NULL,
                       1,
                       NULL,
                       NULL,
                       1,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       8,
                       '',
                       1,
                       NULL,
                       1,
                       NULL,
                       NULL,
                       1,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       9,
                       '',
                       1,
                       NULL,
                       1,
                       NULL,
                       NULL,
                       0,
                       1,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       10,
                       '',
                       1,
                       NULL,
                       1,
                       NULL,
                       NULL,
                       0,
                       1,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       11,
                       '',
                       1,
                       NULL,
                       1,
                       NULL,
                       NULL,
                       0,
                       1,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       12,
                       '',
                       1,
                       NULL,
                       1,
                       NULL,
                       NULL,
                       0,
                       1,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       13,
                       '',
                       1,
                       NULL,
                       1,
                       NULL,
                       NULL,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       14,
                       '',
                       1,
                       NULL,
                       1,
                       NULL,
                       NULL,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       15,
                       '',
                       1,
                       NULL,
                       1,
                       NULL,
                       NULL,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       16,
                       '',
                       1,
                       NULL,
                       1,
                       NULL,
                       NULL,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       17,
                       '',
                       1,
                       NULL,
                       1,
                       NULL,
                       NULL,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       18,
                       'documents/images/gallery_display_images/img_3.png',
                       2,
                       NULL,
                       4,
                       NULL,
                       NULL,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       19,
                       '',
                       1,
                       NULL,
                       4,
                       NULL,
                       NULL,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       20,
                       '',
                       1,
                       NULL,
                       4,
                       NULL,
                       NULL,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       21,
                       '',
                       1,
                       NULL,
                       4,
                       NULL,
                       NULL,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       22,
                       '',
                       1,
                       NULL,
                       4,
                       NULL,
                       NULL,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       23,
                       '',
                       1,
                       NULL,
                       4,
                       NULL,
                       NULL,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       24,
                       '',
                       1,
                       NULL,
                       4,
                       NULL,
                       NULL,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       25,
                       '',
                       1,
                       NULL,
                       4,
                       NULL,
                       NULL,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       26,
                       '',
                       1,
                       NULL,
                       4,
                       NULL,
                       NULL,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       27,
                       '',
                       1,
                       NULL,
                       4,
                       NULL,
                       NULL,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       28,
                       'documents/images/gallery_display_images/img_6.png',
                       2,
                       NULL,
                       5,
                       NULL,
                       NULL,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       29,
                       '',
                       1,
                       NULL,
                       5,
                       NULL,
                       NULL,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       30,
                       '',
                       1,
                       NULL,
                       5,
                       NULL,
                       NULL,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       31,
                       '',
                       1,
                       NULL,
                       5,
                       NULL,
                       NULL,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       32,
                       '',
                       1,
                       NULL,
                       5,
                       NULL,
                       NULL,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       33,
                       '',
                       1,
                       NULL,
                       5,
                       NULL,
                       NULL,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       34,
                       '',
                       1,
                       NULL,
                       5,
                       NULL,
                       NULL,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       35,
                       '',
                       1,
                       NULL,
                       5,
                       NULL,
                       NULL,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       36,
                       NULL,
                       1,
                       NULL,
                       5,
                       NULL,
                       NULL,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       37,
                       '',
                       1,
                       NULL,
                       5,
                       NULL,
                       NULL,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       38,
                       'documents/images/gallery_display_images/img_4.png',
                       2,
                       NULL,
                       6,
                       1,
                       NULL,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       39,
                       '/documents/images/measurement_type_images/img_1.jpg',
                       4,
                       1,
                       NULL,
                       1,
                       NULL,
                       0,
                       0,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       40,
                       '/documents/images/measurement_info_images/img_2.jpg',
                       5,
                       1,
                       NULL,
                       1,
                       NULL,
                       0,
                       0,
                       NULL,
                       NULL
                   );

INSERT INTO images (
                       id,
                       images_path,
                       image_type,
                       reference,
                       id_image_directory,
                       id_firm,
                       is_visible,
                       is_deleted,
                       is_favourite,
                       gender,
                       gallery_pattern_image_path
                   )
                   VALUES (
                       41,
                       '/documents/images/measurement_info_images/img_3.jpg',
                       5,
                       5,
                       NULL,
                       1,
                       NULL,
                       0,
                       0,
                       NULL,
                       NULL
                   );


-- Table: master_pettern
DROP TABLE IF EXISTS master_pettern;

CREATE TABLE IF NOT EXISTS master_pettern (
    id   INTEGER PRIMARY KEY AUTOINCREMENT
                 NOT NULL,
    name TEXT
);

INSERT INTO master_pettern (
                               id,
                               name
                           )
                           VALUES (
                               1,
                               'Pants'
                           );

INSERT INTO master_pettern (
                               id,
                               name
                           )
                           VALUES (
                               2,
                               'Shirt'
                           );

INSERT INTO master_pettern (
                               id,
                               name
                           )
                           VALUES (
                               3,
                               'Shorts'
                           );

INSERT INTO master_pettern (
                               id,
                               name
                           )
                           VALUES (
                               4,
                               'Churidar'
                           );

INSERT INTO master_pettern (
                               id,
                               name
                           )
                           VALUES (
                               5,
                               'Frock'
                           );

INSERT INTO master_pettern (
                               id,
                               name
                           )
                           VALUES (
                               6,
                               'Kurti'
                           );

INSERT INTO master_pettern (
                               id,
                               name
                           )
                           VALUES (
                               7,
                               'Night Gown'
                           );

INSERT INTO master_pettern (
                               id,
                               name
                           )
                           VALUES (
                               8,
                               'Salwar Kamees'
                           );

INSERT INTO master_pettern (
                               id,
                               name
                           )
                           VALUES (
                               9,
                               'Saree Blouse'
                           );

INSERT INTO master_pettern (
                               id,
                               name
                           )
                           VALUES (
                               10,
                               'Under Skirt'
                           );


-- Table: measurement_custom_fields
DROP TABLE IF EXISTS measurement_custom_fields;

CREATE TABLE IF NOT EXISTS measurement_custom_fields (
    id           INTEGER   NOT NULL
                           PRIMARY KEY AUTOINCREMENT,
    id_firm      INTEGER   NOT NULL,
    m_field_name TEXT (20) NOT NULL,
    body_part    INTEGER   NOT NULL,
    m_unit       INTEGER   NOT NULL,
    is_active    TEXT (1)  NOT NULL
                           DEFAULT '1',
    is_deleted   TEXT (1)  NOT NULL
                           DEFAULT '0',
    CONSTRAINT fk_measurement_custom_fields_id_firm_firms_id FOREIGN KEY (
        id_firm
    )
    REFERENCES firms (id) 
);

INSERT INTO measurement_custom_fields (
                                          id,
                                          id_firm,
                                          m_field_name,
                                          body_part,
                                          m_unit,
                                          is_active,
                                          is_deleted
                                      )
                                      VALUES (
                                          1,
                                          1,
                                          'Waist To Knee',
                                          2,
                                          1,
                                          '1',
                                          '0'
                                      );

INSERT INTO measurement_custom_fields (
                                          id,
                                          id_firm,
                                          m_field_name,
                                          body_part,
                                          m_unit,
                                          is_active,
                                          is_deleted
                                      )
                                      VALUES (
                                          2,
                                          1,
                                          'Knee',
                                          2,
                                          1,
                                          '1',
                                          '0'
                                      );

INSERT INTO measurement_custom_fields (
                                          id,
                                          id_firm,
                                          m_field_name,
                                          body_part,
                                          m_unit,
                                          is_active,
                                          is_deleted
                                      )
                                      VALUES (
                                          3,
                                          1,
                                          'Ankle',
                                          2,
                                          1,
                                          '1',
                                          '0'
                                      );


-- Table: measurement_field_values
DROP TABLE IF EXISTS measurement_field_values;

CREATE TABLE IF NOT EXISTS measurement_field_values (
    id             INTEGER  NOT NULL
                            PRIMARY KEY AUTOINCREMENT,
    id_firm        INTEGER  NOT NULL,
    id_measurement INTEGER  NOT NULL,
    id_m_field     INTEGER  NOT NULL,
    field_type     INTEGER  NOT NULL,
    field_value    NUMERIC  NOT NULL,
    m_unit         INTEGER  NOT NULL,
    is_deleted     TEXT (1) NOT NULL
                            DEFAULT '0',
    created_by     INTEGER  NOT NULL,
    created_date   DATETIME NOT NULL,
    modified_by    INTEGER,
    modified_date  DATETIME,
    CONSTRAINT fk_measurement_field_values_id_firm_firms_id FOREIGN KEY (
        id_firm
    )
    REFERENCES firms (id),
    CONSTRAINT fk_measurement_field_values_id_measurement_measurements_id FOREIGN KEY (
        id_measurement
    )
    REFERENCES measurements (id),
    CONSTRAINT fk_measurement_field_values_created_by_app_users_id FOREIGN KEY (
        created_by
    )
    REFERENCES app_users (id),
    CONSTRAINT fk_measurement_field_values_modified_by_app_users_id FOREIGN KEY (
        modified_by
    )
    REFERENCES app_users (id) 
);

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         1,
                                         1,
                                         1,
                                         1,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 09:11:32',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         2,
                                         1,
                                         1,
                                         2,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 09:11:32',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         3,
                                         1,
                                         1,
                                         3,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 09:11:32',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         4,
                                         1,
                                         1,
                                         4,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 09:11:32',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         5,
                                         1,
                                         1,
                                         5,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 09:11:32',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         6,
                                         1,
                                         1,
                                         6,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 09:11:32',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         7,
                                         1,
                                         2,
                                         1,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 09:16:07',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         8,
                                         1,
                                         2,
                                         2,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 09:16:07',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         9,
                                         1,
                                         2,
                                         3,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 09:16:07',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         10,
                                         1,
                                         2,
                                         4,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 09:16:07',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         11,
                                         1,
                                         2,
                                         5,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 09:16:07',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         12,
                                         1,
                                         2,
                                         6,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 09:16:07',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         13,
                                         1,
                                         3,
                                         1,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 09:20:56',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         14,
                                         1,
                                         3,
                                         2,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 09:20:56',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         15,
                                         1,
                                         3,
                                         3,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 09:20:56',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         16,
                                         1,
                                         3,
                                         4,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 09:20:56',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         17,
                                         1,
                                         3,
                                         5,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 09:20:56',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         18,
                                         1,
                                         3,
                                         6,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 09:20:56',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         19,
                                         1,
                                         4,
                                         1,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:30:42',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         20,
                                         1,
                                         4,
                                         2,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:30:42',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         21,
                                         1,
                                         4,
                                         3,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:30:42',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         22,
                                         1,
                                         4,
                                         4,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:30:42',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         23,
                                         1,
                                         4,
                                         5,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:30:42',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         24,
                                         1,
                                         4,
                                         6,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:30:42',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         25,
                                         1,
                                         5,
                                         1,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:48:14',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         26,
                                         1,
                                         5,
                                         2,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:48:14',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         27,
                                         1,
                                         5,
                                         3,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:48:14',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         28,
                                         1,
                                         5,
                                         4,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:48:14',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         29,
                                         1,
                                         5,
                                         5,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:48:14',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         30,
                                         1,
                                         5,
                                         6,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:48:14',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         31,
                                         1,
                                         6,
                                         1,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:49:22',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         32,
                                         1,
                                         6,
                                         2,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:49:22',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         33,
                                         1,
                                         6,
                                         3,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:49:22',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         34,
                                         1,
                                         6,
                                         4,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:49:22',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         35,
                                         1,
                                         6,
                                         5,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:49:22',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         36,
                                         1,
                                         6,
                                         6,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:49:22',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         37,
                                         1,
                                         7,
                                         1,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:51:14',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         38,
                                         1,
                                         7,
                                         2,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:51:14',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         39,
                                         1,
                                         7,
                                         3,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:51:14',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         40,
                                         1,
                                         7,
                                         4,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:51:14',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         41,
                                         1,
                                         7,
                                         5,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:51:14',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         42,
                                         1,
                                         7,
                                         6,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:51:14',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         43,
                                         1,
                                         8,
                                         1,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:55:37',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         44,
                                         1,
                                         8,
                                         2,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:55:37',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         45,
                                         1,
                                         8,
                                         3,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:55:37',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         46,
                                         1,
                                         8,
                                         4,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:55:37',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         47,
                                         1,
                                         8,
                                         5,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:55:37',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         48,
                                         1,
                                         8,
                                         6,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 10:55:37',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         49,
                                         1,
                                         9,
                                         1,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 11:02:52',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         50,
                                         1,
                                         9,
                                         2,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 11:02:52',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         51,
                                         1,
                                         9,
                                         3,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 11:02:52',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         52,
                                         1,
                                         9,
                                         4,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 11:02:52',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         53,
                                         1,
                                         9,
                                         5,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 11:02:52',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         54,
                                         1,
                                         9,
                                         6,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 11:02:52',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         55,
                                         1,
                                         10,
                                         1,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 11:11:44',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         56,
                                         1,
                                         10,
                                         2,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 11:11:44',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         57,
                                         1,
                                         10,
                                         3,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 11:11:44',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         58,
                                         1,
                                         10,
                                         4,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 11:11:44',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         59,
                                         1,
                                         10,
                                         5,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 11:11:44',
                                         NULL,
                                         NULL
                                     );

INSERT INTO measurement_field_values (
                                         id,
                                         id_firm,
                                         id_measurement,
                                         id_m_field,
                                         field_type,
                                         field_value,
                                         m_unit,
                                         is_deleted,
                                         created_by,
                                         created_date,
                                         modified_by,
                                         modified_date
                                     )
                                     VALUES (
                                         60,
                                         1,
                                         10,
                                         6,
                                         1,
                                         1,
                                         1,
                                         '0',
                                         1,
                                         '2023-02-27 11:11:44',
                                         NULL,
                                         NULL
                                     );


-- Table: measurement_master_fields
DROP TABLE IF EXISTS measurement_master_fields;

CREATE TABLE IF NOT EXISTS measurement_master_fields (
    id           INTEGER   NOT NULL
                           PRIMARY KEY AUTOINCREMENT,
    m_field_name TEXT (20) NOT NULL,
    body_part    INTEGER   NOT NULL,
    m_unit       INTEGER   NOT NULL,
    is_active    TEXT (1)  NOT NULL
                           DEFAULT '1',
    is_deleted   TEXT (1)  NOT NULL
                           DEFAULT '0'
);

INSERT INTO measurement_master_fields (
                                          id,
                                          m_field_name,
                                          body_part,
                                          m_unit,
                                          is_active,
                                          is_deleted
                                      )
                                      VALUES (
                                          1,
                                          'Neck',
                                          1,
                                          1,
                                          '1',
                                          '0'
                                      );

INSERT INTO measurement_master_fields (
                                          id,
                                          m_field_name,
                                          body_part,
                                          m_unit,
                                          is_active,
                                          is_deleted
                                      )
                                      VALUES (
                                          2,
                                          'Chest',
                                          1,
                                          1,
                                          '1',
                                          '0'
                                      );

INSERT INTO measurement_master_fields (
                                          id,
                                          m_field_name,
                                          body_part,
                                          m_unit,
                                          is_active,
                                          is_deleted
                                      )
                                      VALUES (
                                          3,
                                          'Wrist',
                                          1,
                                          1,
                                          '1',
                                          '0'
                                      );

INSERT INTO measurement_master_fields (
                                          id,
                                          m_field_name,
                                          body_part,
                                          m_unit,
                                          is_active,
                                          is_deleted
                                      )
                                      VALUES (
                                          4,
                                          'Shoulder Width',
                                          1,
                                          1,
                                          '1',
                                          '0'
                                      );

INSERT INTO measurement_master_fields (
                                          id,
                                          m_field_name,
                                          body_part,
                                          m_unit,
                                          is_active,
                                          is_deleted
                                      )
                                      VALUES (
                                          5,
                                          'Arm Length',
                                          1,
                                          1,
                                          '1',
                                          '0'
                                      );

INSERT INTO measurement_master_fields (
                                          id,
                                          m_field_name,
                                          body_part,
                                          m_unit,
                                          is_active,
                                          is_deleted
                                      )
                                      VALUES (
                                          6,
                                          'Biceps',
                                          1,
                                          1,
                                          '1',
                                          '0'
                                      );

INSERT INTO measurement_master_fields (
                                          id,
                                          m_field_name,
                                          body_part,
                                          m_unit,
                                          is_active,
                                          is_deleted
                                      )
                                      VALUES (
                                          7,
                                          'Hip',
                                          2,
                                          1,
                                          '1',
                                          '0'
                                      );

INSERT INTO measurement_master_fields (
                                          id,
                                          m_field_name,
                                          body_part,
                                          m_unit,
                                          is_active,
                                          is_deleted
                                      )
                                      VALUES (
                                          8,
                                          'Waist',
                                          2,
                                          1,
                                          '1',
                                          '0'
                                      );

INSERT INTO measurement_master_fields (
                                          id,
                                          m_field_name,
                                          body_part,
                                          m_unit,
                                          is_active,
                                          is_deleted
                                      )
                                      VALUES (
                                          9,
                                          'Inseam',
                                          2,
                                          1,
                                          '1',
                                          '0'
                                      );

INSERT INTO measurement_master_fields (
                                          id,
                                          m_field_name,
                                          body_part,
                                          m_unit,
                                          is_active,
                                          is_deleted
                                      )
                                      VALUES (
                                          10,
                                          'Thigh',
                                          2,
                                          1,
                                          '1',
                                          '0'
                                      );

INSERT INTO measurement_master_fields (
                                          id,
                                          m_field_name,
                                          body_part,
                                          m_unit,
                                          is_active,
                                          is_deleted
                                      )
                                      VALUES (
                                          11,
                                          'Calf',
                                          2,
                                          1,
                                          '1',
                                          '0'
                                      );


-- Table: measurement_service_charges
DROP TABLE IF EXISTS measurement_service_charges;

CREATE TABLE IF NOT EXISTS measurement_service_charges (
    id              INTEGER        NOT NULL
                                   PRIMARY KEY AUTOINCREMENT,
    id_firm         INTEGER,
    id_m_type       INTEGER        NOT NULL,
    id_service_type INTEGER        NOT NULL,
    charge          DECIMAL (7, 2) NOT NULL,
    effective_date  DATETIME       NOT NULL,
    end_date        DATETIME,
    CONSTRAINT fk_measurement_service_charges_id_firm_firms_id FOREIGN KEY (
        id_firm
    )
    REFERENCES firms (id),
    CONSTRAINT fk_measurement_service_charges_id_m_type_measurement_types_id FOREIGN KEY (
        id_m_type
    )
    REFERENCES measurement_types (id) 
);

INSERT INTO measurement_service_charges (
                                            id,
                                            id_firm,
                                            id_m_type,
                                            id_service_type,
                                            charge,
                                            effective_date,
                                            end_date
                                        )
                                        VALUES (
                                            1,
                                            1,
                                            1,
                                            1,
                                            12.23,
                                            '2023-01-10 18:58:20',
                                            NULL
                                        );

INSERT INTO measurement_service_charges (
                                            id,
                                            id_firm,
                                            id_m_type,
                                            id_service_type,
                                            charge,
                                            effective_date,
                                            end_date
                                        )
                                        VALUES (
                                            2,
                                            1,
                                            1,
                                            2,
                                            8.42,
                                            '2023-01-10 18:58:20',
                                            NULL
                                        );

INSERT INTO measurement_service_charges (
                                            id,
                                            id_firm,
                                            id_m_type,
                                            id_service_type,
                                            charge,
                                            effective_date,
                                            end_date
                                        )
                                        VALUES (
                                            3,
                                            1,
                                            5,
                                            1,
                                            16,
                                            '2023-01-10 18:58:20',
                                            NULL
                                        );

INSERT INTO measurement_service_charges (
                                            id,
                                            id_firm,
                                            id_m_type,
                                            id_service_type,
                                            charge,
                                            effective_date,
                                            end_date
                                        )
                                        VALUES (
                                            4,
                                            1,
                                            5,
                                            2,
                                            10.16,
                                            '2023-01-10 18:58:20',
                                            NULL
                                        );


-- Table: measurement_tailor_assignments
DROP TABLE IF EXISTS measurement_tailor_assignments;

CREATE TABLE IF NOT EXISTS measurement_tailor_assignments (
    id                INTEGER  NOT NULL
                               PRIMARY KEY AUTOINCREMENT,
    id_firm           INTEGER  NOT NULL,
    id_measurement    INTEGER  NOT NULL,
    id_tailor         INTEGER  NOT NULL,
    assignment_date   DATETIME NOT NULL,
    completation_date DATETIME,
    handover_date     DATETIME,
    created_by        INTEGER  NOT NULL,
    created_date      DATETIME NOT NULL,
    modified_by       INTEGER,
    modified_date     DATETIME,
    CONSTRAINT fk_measurement_field_values_id_firm_firms_id FOREIGN KEY (
        id_firm
    )
    REFERENCES firms (id),
    CONSTRAINT fk_measurement_tailor_assignments_id_measurement_measurements_id FOREIGN KEY (
        id_measurement
    )
    REFERENCES measurements (id),
    CONSTRAINT fk_measurement_tailor_assignments_id_tailor_measurements_id FOREIGN KEY (
        id_tailor
    )
    REFERENCES tailors (id),
    CONSTRAINT fk_measurement_tailor_assignments_created_by_app_users_id FOREIGN KEY (
        created_by
    )
    REFERENCES app_users (id),
    CONSTRAINT fk_measurement_field_values_modified_by_app_users_id FOREIGN KEY (
        modified_by
    )
    REFERENCES app_users (id) 
);


-- Table: measurement_type_field_configurations
DROP TABLE IF EXISTS measurement_type_field_configurations;

CREATE TABLE IF NOT EXISTS measurement_type_field_configurations (
    id         INTEGER  NOT NULL
                        PRIMARY KEY AUTOINCREMENT,
    id_firm    INTEGER,
    id_m_type  INTEGER  NOT NULL,
    id_m_field INTEGER  NOT NULL,
    field_type INTEGER  NOT NULL,
    sort_order INTEGER  NOT NULL,
    is_deleted TEXT (1) NOT NULL
                        DEFAULT '0',
    CONSTRAINT fk_measurement_type_field_configurations_id_firm_firms_id FOREIGN KEY (
        id_firm
    )
    REFERENCES firms (id),
    CONSTRAINT fk_measurement_type_field_configurations_id_m_type_measurement_types_id FOREIGN KEY (
        id_m_type
    )
    REFERENCES measurement_types (id) 
);

INSERT INTO measurement_type_field_configurations (
                                                      id,
                                                      id_firm,
                                                      id_m_type,
                                                      id_m_field,
                                                      field_type,
                                                      sort_order,
                                                      is_deleted
                                                  )
                                                  VALUES (
                                                      1,
                                                      1,
                                                      1,
                                                      1,
                                                      1,
                                                      1,
                                                      '0'
                                                  );

INSERT INTO measurement_type_field_configurations (
                                                      id,
                                                      id_firm,
                                                      id_m_type,
                                                      id_m_field,
                                                      field_type,
                                                      sort_order,
                                                      is_deleted
                                                  )
                                                  VALUES (
                                                      2,
                                                      1,
                                                      1,
                                                      2,
                                                      1,
                                                      2,
                                                      '0'
                                                  );

INSERT INTO measurement_type_field_configurations (
                                                      id,
                                                      id_firm,
                                                      id_m_type,
                                                      id_m_field,
                                                      field_type,
                                                      sort_order,
                                                      is_deleted
                                                  )
                                                  VALUES (
                                                      3,
                                                      1,
                                                      1,
                                                      3,
                                                      1,
                                                      3,
                                                      '0'
                                                  );

INSERT INTO measurement_type_field_configurations (
                                                      id,
                                                      id_firm,
                                                      id_m_type,
                                                      id_m_field,
                                                      field_type,
                                                      sort_order,
                                                      is_deleted
                                                  )
                                                  VALUES (
                                                      4,
                                                      1,
                                                      1,
                                                      4,
                                                      1,
                                                      4,
                                                      '0'
                                                  );

INSERT INTO measurement_type_field_configurations (
                                                      id,
                                                      id_firm,
                                                      id_m_type,
                                                      id_m_field,
                                                      field_type,
                                                      sort_order,
                                                      is_deleted
                                                  )
                                                  VALUES (
                                                      5,
                                                      1,
                                                      1,
                                                      5,
                                                      1,
                                                      5,
                                                      '0'
                                                  );

INSERT INTO measurement_type_field_configurations (
                                                      id,
                                                      id_firm,
                                                      id_m_type,
                                                      id_m_field,
                                                      field_type,
                                                      sort_order,
                                                      is_deleted
                                                  )
                                                  VALUES (
                                                      6,
                                                      1,
                                                      1,
                                                      6,
                                                      1,
                                                      6,
                                                      '0'
                                                  );

INSERT INTO measurement_type_field_configurations (
                                                      id,
                                                      id_firm,
                                                      id_m_type,
                                                      id_m_field,
                                                      field_type,
                                                      sort_order,
                                                      is_deleted
                                                  )
                                                  VALUES (
                                                      7,
                                                      1,
                                                      5,
                                                      7,
                                                      1,
                                                      1,
                                                      '0'
                                                  );

INSERT INTO measurement_type_field_configurations (
                                                      id,
                                                      id_firm,
                                                      id_m_type,
                                                      id_m_field,
                                                      field_type,
                                                      sort_order,
                                                      is_deleted
                                                  )
                                                  VALUES (
                                                      8,
                                                      1,
                                                      5,
                                                      8,
                                                      1,
                                                      2,
                                                      '0'
                                                  );

INSERT INTO measurement_type_field_configurations (
                                                      id,
                                                      id_firm,
                                                      id_m_type,
                                                      id_m_field,
                                                      field_type,
                                                      sort_order,
                                                      is_deleted
                                                  )
                                                  VALUES (
                                                      9,
                                                      1,
                                                      5,
                                                      10,
                                                      1,
                                                      3,
                                                      '0'
                                                  );

INSERT INTO measurement_type_field_configurations (
                                                      id,
                                                      id_firm,
                                                      id_m_type,
                                                      id_m_field,
                                                      field_type,
                                                      sort_order,
                                                      is_deleted
                                                  )
                                                  VALUES (
                                                      10,
                                                      1,
                                                      5,
                                                      11,
                                                      1,
                                                      5,
                                                      '0'
                                                  );

INSERT INTO measurement_type_field_configurations (
                                                      id,
                                                      id_firm,
                                                      id_m_type,
                                                      id_m_field,
                                                      field_type,
                                                      sort_order,
                                                      is_deleted
                                                  )
                                                  VALUES (
                                                      11,
                                                      1,
                                                      5,
                                                      1,
                                                      2,
                                                      7,
                                                      '0'
                                                  );

INSERT INTO measurement_type_field_configurations (
                                                      id,
                                                      id_firm,
                                                      id_m_type,
                                                      id_m_field,
                                                      field_type,
                                                      sort_order,
                                                      is_deleted
                                                  )
                                                  VALUES (
                                                      12,
                                                      1,
                                                      5,
                                                      2,
                                                      2,
                                                      4,
                                                      '0'
                                                  );

INSERT INTO measurement_type_field_configurations (
                                                      id,
                                                      id_firm,
                                                      id_m_type,
                                                      id_m_field,
                                                      field_type,
                                                      sort_order,
                                                      is_deleted
                                                  )
                                                  VALUES (
                                                      13,
                                                      1,
                                                      5,
                                                      3,
                                                      2,
                                                      6,
                                                      '0'
                                                  );


-- Table: measurement_types
DROP TABLE IF EXISTS measurement_types;

CREATE TABLE IF NOT EXISTS measurement_types (
    id         INTEGER   NOT NULL
                         PRIMARY KEY AUTOINCREMENT,
    id_firm    INTEGER,
    type_name  TEXT (20) NOT NULL,
    min_days   INTEGER   NOT NULL,
    gender     INTEGER,
    is_custom  TEXT (1)  NOT NULL,
    is_active  TEXT (1)  NOT NULL
                         DEFAULT '1',
    is_deleted TEXT (1)  NOT NULL
                         DEFAULT '0',
    CONSTRAINT fk_measurement_types_id_firm_firms_id FOREIGN KEY (
        id_firm
    )
    REFERENCES firms (id) 
);

INSERT INTO measurement_types (
                                  id,
                                  id_firm,
                                  type_name,
                                  min_days,
                                  gender,
                                  is_custom,
                                  is_active,
                                  is_deleted
                              )
                              VALUES (
                                  1,
                                  NULL,
                                  'Shirt',
                                  7,
                                  1,
                                  '0',
                                  '1',
                                  '0'
                              );

INSERT INTO measurement_types (
                                  id,
                                  id_firm,
                                  type_name,
                                  min_days,
                                  gender,
                                  is_custom,
                                  is_active,
                                  is_deleted
                              )
                              VALUES (
                                  2,
                                  NULL,
                                  'T-Shirt',
                                  4,
                                  NULL,
                                  '0',
                                  '1',
                                  '0'
                              );

INSERT INTO measurement_types (
                                  id,
                                  id_firm,
                                  type_name,
                                  min_days,
                                  gender,
                                  is_custom,
                                  is_active,
                                  is_deleted
                              )
                              VALUES (
                                  3,
                                  NULL,
                                  'Suit',
                                  16,
                                  1,
                                  '0',
                                  '1',
                                  '0'
                              );

INSERT INTO measurement_types (
                                  id,
                                  id_firm,
                                  type_name,
                                  min_days,
                                  gender,
                                  is_custom,
                                  is_active,
                                  is_deleted
                              )
                              VALUES (
                                  4,
                                  NULL,
                                  'Sweater',
                                  10,
                                  NULL,
                                  '0',
                                  '1',
                                  '0'
                              );

INSERT INTO measurement_types (
                                  id,
                                  id_firm,
                                  type_name,
                                  min_days,
                                  gender,
                                  is_custom,
                                  is_active,
                                  is_deleted
                              )
                              VALUES (
                                  5,
                                  NULL,
                                  'Trousers',
                                  7,
                                  1,
                                  '0',
                                  '1',
                                  '0'
                              );

INSERT INTO measurement_types (
                                  id,
                                  id_firm,
                                  type_name,
                                  min_days,
                                  gender,
                                  is_custom,
                                  is_active,
                                  is_deleted
                              )
                              VALUES (
                                  6,
                                  NULL,
                                  'Saree',
                                  9,
                                  2,
                                  '0',
                                  '1',
                                  '0'
                              );

INSERT INTO measurement_types (
                                  id,
                                  id_firm,
                                  type_name,
                                  min_days,
                                  gender,
                                  is_custom,
                                  is_active,
                                  is_deleted
                              )
                              VALUES (
                                  7,
                                  NULL,
                                  'Crop-Top',
                                  7,
                                  2,
                                  '0',
                                  '1',
                                  '0'
                              );

INSERT INTO measurement_types (
                                  id,
                                  id_firm,
                                  type_name,
                                  min_days,
                                  gender,
                                  is_custom,
                                  is_active,
                                  is_deleted
                              )
                              VALUES (
                                  8,
                                  NULL,
                                  'Western Dress',
                                  7,
                                  2,
                                  '0',
                                  '1',
                                  '0'
                              );

INSERT INTO measurement_types (
                                  id,
                                  id_firm,
                                  type_name,
                                  min_days,
                                  gender,
                                  is_custom,
                                  is_active,
                                  is_deleted
                              )
                              VALUES (
                                  9,
                                  1,
                                  'Bow tie',
                                  2,
                                  1,
                                  '1',
                                  '1',
                                  '0'
                              );

INSERT INTO measurement_types (
                                  id,
                                  id_firm,
                                  type_name,
                                  min_days,
                                  gender,
                                  is_custom,
                                  is_active,
                                  is_deleted
                              )
                              VALUES (
                                  10,
                                  1,
                                  'Sleeveless shirt',
                                  6,
                                  NULL,
                                  '1',
                                  '1',
                                  '0'
                              );

INSERT INTO measurement_types (
                                  id,
                                  id_firm,
                                  type_name,
                                  min_days,
                                  gender,
                                  is_custom,
                                  is_active,
                                  is_deleted
                              )
                              VALUES (
                                  11,
                                  1,
                                  'Sundress',
                                  8,
                                  2,
                                  '1',
                                  '1',
                                  '0'
                              );

INSERT INTO measurement_types (
                                  id,
                                  id_firm,
                                  type_name,
                                  min_days,
                                  gender,
                                  is_custom,
                                  is_active,
                                  is_deleted
                              )
                              VALUES (
                                  12,
                                  1,
                                  'Dupatta',
                                  3,
                                  2,
                                  '1',
                                  '1',
                                  '0'
                              );


-- Table: measurements
DROP TABLE IF EXISTS measurements;

CREATE TABLE IF NOT EXISTS measurements (
    id                       INTEGER        NOT NULL
                                            PRIMARY KEY AUTOINCREMENT,
    id_firm                  INTEGER        NOT NULL,
    id_order                 INTEGER        NOT NULL,
    id_sales_person          INTEGER        NOT NULL,
    label                    TEXT (30)      NOT NULL,
    id_service_type          INTEGER        NOT NULL,
    id_m_type                INTEGER        NOT NULL,
    note                     TEXT (200),
    trial_date               DATE           NOT NULL,
    expected_delivery_date   DATE           NOT NULL,
    actual_delivery_date     DATE,
    charge                   DECIMAL (7, 2) NOT NULL,
    status                   INTEGER        NOT NULL,
    id_instruction_recording INTEGER,
    id_material_image        INTEGER,
    id_pattern_image         INTEGER,
    is_deleted               TEXT (1)       NOT NULL
                                            DEFAULT '0',
    created_by               INTEGER        NOT NULL,
    created_date             DATETIME       NOT NULL,
    modified_by              INTEGER,
    modified_date            DATETIME,
    id_audio                 TEXT           CONSTRAINT fk_measurments_id_audio_audio_id REFERENCES audio (id),
    CONSTRAINT fk_measurments_id_firm_firms_id FOREIGN KEY (
        id_firm
    )
    REFERENCES firms (id),
    CONSTRAINT fk_measurments_id_order_orders_id FOREIGN KEY (
        id_order
    )
    REFERENCES orders (id),
    CONSTRAINT fk_measurements_id_sales_person_app_users_id FOREIGN KEY (
        id_sales_person
    )
    REFERENCES app_users (id),
    CONSTRAINT fk_measurments_id_m_type_measurement_types_id FOREIGN KEY (
        id_m_type
    )
    REFERENCES measurement_types (id),
    CONSTRAINT fk_measurments_created_by_app_users_id FOREIGN KEY (
        created_by
    )
    REFERENCES app_users (id),
    CONSTRAINT fk_measurments_modified_by_app_users_id FOREIGN KEY (
        modified_by
    )
    REFERENCES app_users (id),
    CONSTRAINT fk_measurments_id_instruction_recording_documents_id FOREIGN KEY (
        id_instruction_recording
    )
    REFERENCES documents (id),
    CONSTRAINT fk_measurments_id_material_image_images_id FOREIGN KEY (
        id_material_image
    )
    REFERENCES images (id),
    CONSTRAINT fk_measurments_id_pattern_image_images_id FOREIGN KEY (
        id_pattern_image
    )
    REFERENCES images (id) 
);

INSERT INTO measurements (
                             id,
                             id_firm,
                             id_order,
                             id_sales_person,
                             label,
                             id_service_type,
                             id_m_type,
                             note,
                             trial_date,
                             expected_delivery_date,
                             actual_delivery_date,
                             charge,
                             status,
                             id_instruction_recording,
                             id_material_image,
                             id_pattern_image,
                             is_deleted,
                             created_by,
                             created_date,
                             modified_by,
                             modified_date,
                             id_audio
                         )
                         VALUES (
                             1,
                             1,
                             1,
                             1,
                             'Rufidncn',
                             1,
                             1,
                             'Jfirjcnrjcj',
                             '2023-03-01',
                             '2023-03-03',
                             NULL,
                             12.23,
                             1,
                             NULL,
                             NULL,
                             NULL,
                             '0',
                             1,
                             '2023-02-27 09:11:32',
                             NULL,
                             NULL,
                             NULL
                         );

INSERT INTO measurements (
                             id,
                             id_firm,
                             id_order,
                             id_sales_person,
                             label,
                             id_service_type,
                             id_m_type,
                             note,
                             trial_date,
                             expected_delivery_date,
                             actual_delivery_date,
                             charge,
                             status,
                             id_instruction_recording,
                             id_material_image,
                             id_pattern_image,
                             is_deleted,
                             created_by,
                             created_date,
                             modified_by,
                             modified_date,
                             id_audio
                         )
                         VALUES (
                             2,
                             1,
                             2,
                             1,
                             'Rhthth',
                             1,
                             1,
                             'Fbfbfbv',
                             '2023-03-01',
                             '2023-03-02',
                             NULL,
                             12.23,
                             1,
                             NULL,
                             NULL,
                             NULL,
                             '0',
                             1,
                             '2023-02-27 09:16:07',
                             NULL,
                             NULL,
                             NULL
                         );

INSERT INTO measurements (
                             id,
                             id_firm,
                             id_order,
                             id_sales_person,
                             label,
                             id_service_type,
                             id_m_type,
                             note,
                             trial_date,
                             expected_delivery_date,
                             actual_delivery_date,
                             charge,
                             status,
                             id_instruction_recording,
                             id_material_image,
                             id_pattern_image,
                             is_deleted,
                             created_by,
                             created_date,
                             modified_by,
                             modified_date,
                             id_audio
                         )
                         VALUES (
                             3,
                             1,
                             3,
                             1,
                             'Cbfhfg',
                             1,
                             1,
                             'Fhfbfb',
                             '2023-02-28',
                             '2023-03-01',
                             NULL,
                             12.23,
                             1,
                             2,
                             NULL,
                             NULL,
                             '0',
                             1,
                             '2023-02-27 09:20:56',
                             NULL,
                             NULL,
                             NULL
                         );

INSERT INTO measurements (
                             id,
                             id_firm,
                             id_order,
                             id_sales_person,
                             label,
                             id_service_type,
                             id_m_type,
                             note,
                             trial_date,
                             expected_delivery_date,
                             actual_delivery_date,
                             charge,
                             status,
                             id_instruction_recording,
                             id_material_image,
                             id_pattern_image,
                             is_deleted,
                             created_by,
                             created_date,
                             modified_by,
                             modified_date,
                             id_audio
                         )
                         VALUES (
                             4,
                             1,
                             4,
                             1,
                             'Nricicjrj',
                             1,
                             1,
                             'Ndifjcn',
                             '2023-02-28',
                             '2023-03-01',
                             NULL,
                             12.23,
                             1,
                             3,
                             NULL,
                             NULL,
                             '0',
                             1,
                             '2023-02-27 10:30:42',
                             NULL,
                             NULL,
                             NULL
                         );

INSERT INTO measurements (
                             id,
                             id_firm,
                             id_order,
                             id_sales_person,
                             label,
                             id_service_type,
                             id_m_type,
                             note,
                             trial_date,
                             expected_delivery_date,
                             actual_delivery_date,
                             charge,
                             status,
                             id_instruction_recording,
                             id_material_image,
                             id_pattern_image,
                             is_deleted,
                             created_by,
                             created_date,
                             modified_by,
                             modified_date,
                             id_audio
                         )
                         VALUES (
                             5,
                             1,
                             5,
                             1,
                             'Rgrhth',
                             1,
                             1,
                             'Cjejjdnrcjrjcj',
                             '2023-02-28',
                             '2023-03-01',
                             NULL,
                             12.23,
                             1,
                             NULL,
                             NULL,
                             NULL,
                             '0',
                             1,
                             '2023-02-27 10:48:14',
                             NULL,
                             NULL,
                             NULL
                         );

INSERT INTO measurements (
                             id,
                             id_firm,
                             id_order,
                             id_sales_person,
                             label,
                             id_service_type,
                             id_m_type,
                             note,
                             trial_date,
                             expected_delivery_date,
                             actual_delivery_date,
                             charge,
                             status,
                             id_instruction_recording,
                             id_material_image,
                             id_pattern_image,
                             is_deleted,
                             created_by,
                             created_date,
                             modified_by,
                             modified_date,
                             id_audio
                         )
                         VALUES (
                             6,
                             1,
                             6,
                             1,
                             'Dhdgdgv',
                             1,
                             1,
                             'Cnfnfbgb',
                             '2023-02-28',
                             '2023-03-01',
                             NULL,
                             12.23,
                             1,
                             NULL,
                             NULL,
                             NULL,
                             '0',
                             1,
                             '2023-02-27 10:49:22',
                             NULL,
                             NULL,
                             NULL
                         );

INSERT INTO measurements (
                             id,
                             id_firm,
                             id_order,
                             id_sales_person,
                             label,
                             id_service_type,
                             id_m_type,
                             note,
                             trial_date,
                             expected_delivery_date,
                             actual_delivery_date,
                             charge,
                             status,
                             id_instruction_recording,
                             id_material_image,
                             id_pattern_image,
                             is_deleted,
                             created_by,
                             created_date,
                             modified_by,
                             modified_date,
                             id_audio
                         )
                         VALUES (
                             7,
                             1,
                             7,
                             1,
                             'Hxidjxnx',
                             1,
                             1,
                             'Hgiticnf',
                             '2023-02-28',
                             '2023-03-01',
                             NULL,
                             12.23,
                             1,
                             NULL,
                             NULL,
                             NULL,
                             '0',
                             1,
                             '2023-02-27 10:51:14',
                             NULL,
                             NULL,
                             NULL
                         );

INSERT INTO measurements (
                             id,
                             id_firm,
                             id_order,
                             id_sales_person,
                             label,
                             id_service_type,
                             id_m_type,
                             note,
                             trial_date,
                             expected_delivery_date,
                             actual_delivery_date,
                             charge,
                             status,
                             id_instruction_recording,
                             id_material_image,
                             id_pattern_image,
                             is_deleted,
                             created_by,
                             created_date,
                             modified_by,
                             modified_date,
                             id_audio
                         )
                         VALUES (
                             8,
                             1,
                             8,
                             1,
                             'Dvrhrhrhrhrgg4grrhrhthfbf',
                             1,
                             1,
                             'Vfvtbtbthyhyhyhh',
                             '2023-02-28',
                             '2023-03-01',
                             NULL,
                             12.23,
                             1,
                             NULL,
                             NULL,
                             NULL,
                             '0',
                             1,
                             '2023-02-27 10:55:37',
                             NULL,
                             NULL,
                             NULL
                         );

INSERT INTO measurements (
                             id,
                             id_firm,
                             id_order,
                             id_sales_person,
                             label,
                             id_service_type,
                             id_m_type,
                             note,
                             trial_date,
                             expected_delivery_date,
                             actual_delivery_date,
                             charge,
                             status,
                             id_instruction_recording,
                             id_material_image,
                             id_pattern_image,
                             is_deleted,
                             created_by,
                             created_date,
                             modified_by,
                             modified_date,
                             id_audio
                         )
                         VALUES (
                             9,
                             1,
                             9,
                             1,
                             'Ndidnejcnd',
                             1,
                             1,
                             'Jdirjfnrjrnjcnr',
                             '2023-02-28',
                             '2023-03-01',
                             NULL,
                             12.23,
                             1,
                             4,
                             NULL,
                             NULL,
                             '0',
                             1,
                             '2023-02-27 11:02:52',
                             NULL,
                             NULL,
                             NULL
                         );

INSERT INTO measurements (
                             id,
                             id_firm,
                             id_order,
                             id_sales_person,
                             label,
                             id_service_type,
                             id_m_type,
                             note,
                             trial_date,
                             expected_delivery_date,
                             actual_delivery_date,
                             charge,
                             status,
                             id_instruction_recording,
                             id_material_image,
                             id_pattern_image,
                             is_deleted,
                             created_by,
                             created_date,
                             modified_by,
                             modified_date,
                             id_audio
                         )
                         VALUES (
                             10,
                             1,
                             10,
                             1,
                             'Jfirjvn',
                             1,
                             1,
                             'Jcjrjfjritjvjjt',
                             '2023-02-28',
                             '2023-03-01',
                             NULL,
                             12.23,
                             1,
                             5,
                             NULL,
                             NULL,
                             '0',
                             1,
                             '2023-02-27 11:11:44',
                             NULL,
                             NULL,
                             NULL
                         );


-- Table: orders
DROP TABLE IF EXISTS orders;

CREATE TABLE IF NOT EXISTS orders (
    id              INTEGER  NOT NULL
                             PRIMARY KEY AUTOINCREMENT,
    id_firm         INTEGER,
    id_customer     INTEGER  NOT NULL,
    id_sales_person INTEGER  NOT NULL,
    completion_date DATE,
    status          INTEGER  NOT NULL,
    is_deleted      TEXT (1) NOT NULL
                             DEFAULT '0',
    created_by      INTEGER  NOT NULL,
    created_date    DATETIME NOT NULL,
    modified_by     INTEGER,
    modified_date   DATETIME,
    CONSTRAINT fk_orders_id_firm_firms_id FOREIGN KEY (
        id_firm
    )
    REFERENCES firms (id),
    CONSTRAINT fk_orders_id_customer_customers_id FOREIGN KEY (
        id_customer
    )
    REFERENCES customers (id),
    CONSTRAINT fk_orders_id_sales_person_app_users_id FOREIGN KEY (
        id_sales_person
    )
    REFERENCES app_users (id),
    CONSTRAINT fk_orders_created_by_app_users_id FOREIGN KEY (
        created_by
    )
    REFERENCES app_users (id),
    CONSTRAINT fk_orders_modified_by_app_users_id FOREIGN KEY (
        modified_by
    )
    REFERENCES app_users (id) 
);

INSERT INTO orders (
                       id,
                       id_firm,
                       id_customer,
                       id_sales_person,
                       completion_date,
                       status,
                       is_deleted,
                       created_by,
                       created_date,
                       modified_by,
                       modified_date
                   )
                   VALUES (
                       1,
                       1,
                       5,
                       1,
                       NULL,
                       1,
                       '0',
                       1,
                       '2023-02-27 09:11:32',
                       NULL,
                       NULL
                   );

INSERT INTO orders (
                       id,
                       id_firm,
                       id_customer,
                       id_sales_person,
                       completion_date,
                       status,
                       is_deleted,
                       created_by,
                       created_date,
                       modified_by,
                       modified_date
                   )
                   VALUES (
                       2,
                       1,
                       5,
                       1,
                       NULL,
                       1,
                       '0',
                       1,
                       '2023-02-27 09:16:07',
                       NULL,
                       NULL
                   );

INSERT INTO orders (
                       id,
                       id_firm,
                       id_customer,
                       id_sales_person,
                       completion_date,
                       status,
                       is_deleted,
                       created_by,
                       created_date,
                       modified_by,
                       modified_date
                   )
                   VALUES (
                       3,
                       1,
                       5,
                       1,
                       NULL,
                       1,
                       '0',
                       1,
                       '2023-02-27 09:20:56',
                       NULL,
                       NULL
                   );

INSERT INTO orders (
                       id,
                       id_firm,
                       id_customer,
                       id_sales_person,
                       completion_date,
                       status,
                       is_deleted,
                       created_by,
                       created_date,
                       modified_by,
                       modified_date
                   )
                   VALUES (
                       4,
                       1,
                       6,
                       1,
                       NULL,
                       1,
                       '0',
                       1,
                       '2023-02-27 10:30:42',
                       1,
                       '2023-02-27 10:31:07'
                   );

INSERT INTO orders (
                       id,
                       id_firm,
                       id_customer,
                       id_sales_person,
                       completion_date,
                       status,
                       is_deleted,
                       created_by,
                       created_date,
                       modified_by,
                       modified_date
                   )
                   VALUES (
                       5,
                       1,
                       6,
                       1,
                       NULL,
                       1,
                       '0',
                       1,
                       '2023-02-27 10:48:14',
                       1,
                       '2023-02-27 10:48:36'
                   );

INSERT INTO orders (
                       id,
                       id_firm,
                       id_customer,
                       id_sales_person,
                       completion_date,
                       status,
                       is_deleted,
                       created_by,
                       created_date,
                       modified_by,
                       modified_date
                   )
                   VALUES (
                       6,
                       1,
                       6,
                       1,
                       NULL,
                       1,
                       '0',
                       1,
                       '2023-02-27 10:49:22',
                       1,
                       '2023-02-27 10:50:29'
                   );

INSERT INTO orders (
                       id,
                       id_firm,
                       id_customer,
                       id_sales_person,
                       completion_date,
                       status,
                       is_deleted,
                       created_by,
                       created_date,
                       modified_by,
                       modified_date
                   )
                   VALUES (
                       7,
                       1,
                       6,
                       1,
                       NULL,
                       1,
                       '0',
                       1,
                       '2023-02-27 10:51:14',
                       NULL,
                       NULL
                   );

INSERT INTO orders (
                       id,
                       id_firm,
                       id_customer,
                       id_sales_person,
                       completion_date,
                       status,
                       is_deleted,
                       created_by,
                       created_date,
                       modified_by,
                       modified_date
                   )
                   VALUES (
                       8,
                       1,
                       6,
                       1,
                       NULL,
                       1,
                       '0',
                       1,
                       '2023-02-27 10:55:37',
                       1,
                       '2023-02-27 11:01:59'
                   );

INSERT INTO orders (
                       id,
                       id_firm,
                       id_customer,
                       id_sales_person,
                       completion_date,
                       status,
                       is_deleted,
                       created_by,
                       created_date,
                       modified_by,
                       modified_date
                   )
                   VALUES (
                       9,
                       1,
                       6,
                       1,
                       NULL,
                       1,
                       '0',
                       1,
                       '2023-02-27 11:02:52',
                       NULL,
                       NULL
                   );

INSERT INTO orders (
                       id,
                       id_firm,
                       id_customer,
                       id_sales_person,
                       completion_date,
                       status,
                       is_deleted,
                       created_by,
                       created_date,
                       modified_by,
                       modified_date
                   )
                   VALUES (
                       10,
                       1,
                       6,
                       1,
                       NULL,
                       1,
                       '0',
                       1,
                       '2023-02-27 11:11:44',
                       NULL,
                       NULL
                   );


-- Table: tailors
DROP TABLE IF EXISTS tailors;

CREATE TABLE IF NOT EXISTS tailors (
    id            INTEGER   NOT NULL
                            PRIMARY KEY AUTOINCREMENT,
    id_firm       INTEGER   NOT NULL,
    first_name    TEXT (20) NOT NULL,
    last_name     TEXT (20) NOT NULL,
    mobile_number TEXT (14) NOT NULL,
    email         TEXT (64),
    is_deleted    TEXT (1)  NOT NULL
                            DEFAULT '0',
    created_by    INTEGER   CONSTRAINT fk_tailors_created_by_app_users_id REFERENCES app_users (id) 
                            NOT NULL,
    created_date  DATETIME  NOT NULL,
    modify_by     INTEGER   CONSTRAINT fk_tailors_modify_by_app_users_id REFERENCES app_users (id),
    modified_date DATETIME,
    CONSTRAINT fk_tailors_id_firm_firms_id FOREIGN KEY (
        id_firm
    )
    REFERENCES firms (id) 
);

INSERT INTO tailors (
                        id,
                        id_firm,
                        first_name,
                        last_name,
                        mobile_number,
                        email,
                        is_deleted,
                        created_by,
                        created_date,
                        modify_by,
                        modified_date
                    )
                    VALUES (
                        1,
                        1,
                        'John',
                        'Walker',
                        '1234567891',
                        'john@sts.com',
                        '0',
                        1,
                        '01/09/2000',
                        NULL,
                        NULL
                    );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
