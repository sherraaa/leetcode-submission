-- PostgreSQL
SELECT tweet_id
FROM tweets
WHERE char_length(content) > 15
-- char_length ( text ) → integer
-- character_length ( text ) → integer
-- Returns number of characters in the string.
-- char_length('josé') → 4