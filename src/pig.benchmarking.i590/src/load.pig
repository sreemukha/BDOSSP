reviews =
  LOAD '/yelp/yelp_dataset/yelp_academic_dataset_review.json'
  USING 
JsonLoader('votes:map[],user_id:chararray,review_id:chararray,stars:int,date:chararray,text:chararray,type:chararray,business_id:chararray');
tabs =
  FOREACH reviews
  GENERATE
     (INT) votes#'funny', (INT) votes#'useful', (INT) votes#'cool', user_id, review_id, stars, REPLACE(REPLACE(text, 'n', ''), 't', ''), 
date, type, business_id;
STORE tabs INTO 'yelp_academic_dataset_review.tsv';
