-- check procedure
SELECT ROUTINE_NAME, ROUTINE_DEFINITION FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_TYPE = 'PROCEDURE' AND ROUTINE_SCHEMA = 'wealthwhiz';
-- spsearch
DELIMITER $$
CREATE PROCEDURE `sp_search_programming_languages_by_id`(in langid int)
BEGIN
    SELECT name, githut_rank, pypl_rank, tiobe_rank, created_at
    FROM programming_languages
    where id = langid;
END $$
-- test2
