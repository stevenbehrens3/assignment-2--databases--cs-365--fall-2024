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

-- Command 2: Get password for specific user from website
SELECT CAST(AES_DECRYPT(password, @key_str, @init_vector) AS CHAR) AS 'Decrypted Password'
FROM login_information
JOIN website USING (database_id)
WHERE website_url = 'https://www.netflix.com';

-- Command 3: Get login information from HTTPS
SELECT database_id, username, time_created
FROM login_information
JOIN website USING (database_id)
WHERE website_url LIKE 'https%';

-- Command 4: Update website URL for specific user from their password
UPDATE website
JOIN login_information USING (database_id)
SET website_url = 'https://www.fortnite.com'
WHERE CAST(AES_DECRYPT(password, @key_str, @init_vector) AS CHAR) = 'fortnite$';

-- Command 5: Change user’s password from the old password
UPDATE login_information
SET password = AES_ENCRYPT('newpasswordmoney', @key_str, @init_vector)
WHERE CAST(AES_DECRYPT(password, @key_str, @init_vector) AS CHAR) = 'disneyisgreat!$';
