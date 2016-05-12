review = LOAD '/yelp/yelp_dataset/yelp_academic_dataset_review.json' USING 
JsonLoader('votes:map[],user_id:chararray,review_id:chararray,stars:int,date:chararray,text:chararray,business_id:chararray');
user = LOAD '/yelp/yelp_dataset/yelp_academic_dataset_user.json' USING 
JsonLoader('type:chararray,user_id:chararray,name:chararray,review_count:int,average_stars:float');
average = FILTER user by average_stars >=4.0;
SET default_parallel 5
STORE average INTO 'yelp_average_stars1.tsv';
