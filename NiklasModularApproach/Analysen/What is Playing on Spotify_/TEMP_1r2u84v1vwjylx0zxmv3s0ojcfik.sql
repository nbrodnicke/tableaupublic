CREATE SCHEMA "Extract";
CREATE TABLE "Extract"."Extract_0" (
"track_id" TEXT,
"track_name" TEXT,
"track_artist" TEXT,
"track_popularity" BIGINT,
"track_album_id" TEXT,
"track_album_name" TEXT,
"track_album_release_date" DATE,
"playlist_name" TEXT,
"playlist_id" TEXT,
"playlist_genre" TEXT,
"playlist_subgenre" TEXT,
"danceability" DOUBLE PRECISION,
"energy" DOUBLE PRECISION,
"key" BIGINT,
"loudness" DOUBLE PRECISION,
"mode" BIGINT,
"speechiness" DOUBLE PRECISION,
"acousticness" DOUBLE PRECISION,
"instrumentalness" DOUBLE PRECISION,
"liveness" DOUBLE PRECISION,
"valence" DOUBLE PRECISION,
"tempo" DOUBLE PRECISION,
"duration_ms" BIGINT
);
COPY "Extract"."Extract_0" FROM '/Users/niklasbrodnicke/Informatikstudium/Wintersemester2324/Bachelorarbeit/tableaupublic/NiklasModularApproach/Analysen/What is Playing on Spotify_/TEMP_1r2u84v1vwjylx0zxmv3s0ojcfik_0.csv'
