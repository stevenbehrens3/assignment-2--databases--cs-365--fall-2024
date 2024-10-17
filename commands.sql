-- Command 1: Inserting a new user into the database
INSERT INTO user_information
VALUES
  (0, "Steven", "Behrens", "stevenbehrens3@example.com", "for personal use only");

INSERT INTO website
VALUES
  (0, "Reddit", "https://www.reddit.com");

INSERT INTO login_information
VALUES
  (0, "stevenbehrens", AES_ENCRYPT("redditpassword400$", @key_str, @init_vector), '2024-10-10 08:15:00');

