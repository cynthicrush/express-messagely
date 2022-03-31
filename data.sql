\c messagely

DROP TABLE IF EXISTS messages;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    username text PRIMARY KEY,
    password text NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    phone text NOT NULL,
    join_at timestamp without time zone NOT NULL,
    last_login_at timestamp with time zone
);

CREATE TABLE messages (
    id SERIAL PRIMARY KEY,
    from_username text NOT NULL REFERENCES users,
    to_username text NOT NULL REFERENCES users,
    body text NOT NULL,
    sent_at timestamp with time zone NOT NULL,
    read_at timestamp with time zone
);

-- INSERT INTO users
-- VALUES ('Cynthicrush', '9788667268', 'Cynthia', 'Canada', '9788667268', 'now', 'now');
-- {
-- 	"username": "Jen",
-- 	"password": "9299906668",
-- 	"first_name": "Jennifer",
-- 	"last_name": "Canada",
-- 	"phone": "9299906668"
-- }