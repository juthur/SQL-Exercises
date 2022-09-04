-- 1. The number of submissions per language
SELECT language, COUNT(*) as lang_count FROM submissions GROUP BY(language);

-- 2. Players who are exactly 25 years old
SELECT nickname FROM players WHERE TIMESTAMPDIFF(YEAR, birth, NOW()) = 25;

-- 3. The top 10 users ranked by number of unique problems attempted
SELECT nickname, COUNT(DISTINCT(problem_id)) AS problems_attempted FROM players INNER JOIN submissions ON players.user_id = submissions.user_id GROUP BY nickname ORDER BY problems_attempted DESC LIMIT 10;

-- 4. Players who submitted on the same problem with at least two different languages
SELECT DISTINCT(nickname) FROM players INNER JOIN submissions ON players.user_id = submissions.user_id GROUP BY nickname, problem_id HAVING COUNT(DISTINCT(language)) >= 2;

-- 5. Players who solved at least 60 different MEDIUM or HARD problems with a 100% score
SELECT nickname FROM players INNER JOIN submissions ON players.user_id = submissions.user_id JOIN problems ON problems.problem_id = submissions.problem_id AND score = 100 AND (difficulty = "MEDIUM" OR difficulty = "HARD") GROUP BY nickname HAVING COUNT(*) >= 60;
