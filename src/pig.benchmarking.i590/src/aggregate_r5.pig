review = LOAD '/yelp/yelp_dataset/yelp_academic_dataset_review.json' USING 
JsonLoader('votes:map[],user_id:chararray,review_id:chararray,stars:int,date:chararray,text:chararray,business_id:chararray');
group_by_user = group review by user_id;
count_user = foreach group_by_user generate group,COUNT(review.user_id);
SET default_parallel 5
STORE count_user INTO 'yelp_count_user_reviews1.tsv';
