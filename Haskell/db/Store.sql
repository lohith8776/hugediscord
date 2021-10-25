PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE labels (id INTEGER NOT NULL, channel_id INTEGER NOT NULL, name TEXT NOT NULL, PRIMARY KEY (id));
CREATE TABLE reamojis (id INTEGER NOT NULL, emoji BLOB NOT NULL, id_foo INTEGER NOT NULL, role INTEGER NOT NULL, prereq TEXT NOT NULL, contradicts TEXT NOT NULL, FOREIGN KEY (id_foo) REFERENCES labels(id), PRIMARY KEY (id, emoji));
COMMIT;
