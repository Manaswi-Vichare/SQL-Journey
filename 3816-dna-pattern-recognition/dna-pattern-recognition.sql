# Write your MySQL query statement below
#sqljourey-mv
SELECT sample_id, dna_sequence, species, 
       IF(SUBSTRING(dna_sequence, 1, 3) = 'ATG', 1, 0) AS has_start,

       IF(SUBSTRING(dna_sequence, -3) = 'TAA' OR SUBSTRING(dna_sequence, -3) = 'TAG' OR SUBSTRING(dna_sequence, -3) = 'TGA', 1, 0) AS has_stop,

       IF(dna_sequence LIKE '%ATAT%', 1, 0) AS has_atat,

       IF(dna_sequence LIKE '%GGG%', 1, 0) AS has_ggg
FROM Samples