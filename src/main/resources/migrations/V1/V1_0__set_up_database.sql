CREATE TABLE HVSS_CONTENT_TYPE(
   ID SERIAL NOT NULL primary KEY ,
   NAME VARCHAR  (16) NOT NULL
);
INSERT INTO HVSS_CONTENT_TYPE (NAME) VALUES ('ANIME'), ('ANIME_SERIES'), ('MOVIE'), ('SERIES');

CREATE TABLE HVSS_CONTENT(
    ID SERIAL NOT NULL primary KEY ,
    CONTENT_TYPE_ID INTEGER REFERENCES HVSS_CONTENT_TYPE(id),
    CONTENT_NAME VARCHAR (255),
    COVER_PICTURE_LOCAL_PATH VARCHAR(255),
    CONTENT_DESCRIPTION VARCHAR(255),
    CREATION_DATE DATE,
    LAST_UPDATE_DATE DATE
);

CREATE TABLE HVSS_CONTENT_ELEMENT(
    ID SERIAL NOT NULL primary KEY ,
    CONTENT_ID INTEGER REFERENCES HVSS_CONTENT(id),
    ARCHIVE_LOCATION_PATH VARCHAR (1024),
    BUFFER_LOCATION_PATH VARCHAR (1024),
    CREATION_DATE DATE,
    LAST_UPDATE_DATE DATE
);

