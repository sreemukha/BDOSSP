review = LOAD '/yelp/yelp_dataset/yelp_academic_dataset_review.json' USING 
JsonLoader('votes:map[],user_id:chararray,review_id:chararray,stars:int,date:chararray,text:chararray,business_id:chararray');
user = LOAD '/yelp/yelp_dataset/yelp_academic_dataset_user.json' USING 
JsonLoader('type:chararray,user_id:chararray,name:chararray,review_count:int,average_stars:float');
join_user_review = JOIN review by user_id, user by user_id;
STORE join_user_review INTO 'yelp_join_user_review.tsv';
