SELECT
    COUNT(*) AS FISH_COUNT
FROM
    FISH_INFO I
WHERE
    FISH_TYPE IN (SELECT
                      FISH_TYPE
                  FROM
                      FISH_NAME_INFO
                  WHERE
                      FISH_NAME = 'BASS' OR
                      FISH_NAME = 'SNAPPER');