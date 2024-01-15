categories=("AMAZON_FASHION" "All_Beauty" "Appliances" "Arts_Crafts_and_Sewing" "Automotive" "Books" "CDs_and_Vinyl" "Cell_Phones_and_Accessories" "Clothing_Shoes_and_Jewelry" "Digital_Music" "Electronics" "Gift_Cards" "Grocery_and_Gourmet_Food" "Home_and_Kitchen" "Industrial_and_Scientific" "Kindle_Store" "Luxury_Beauty" "Magazine_Subscriptions" "Movies_and_TV" "Musical_Instruments" "Office_Products" "Patio_Lawn_and_Garden" "Pet_Supplies" "Prime_Pantry" "Software" "Sports_and_Outdoors" "Tools_and_Home_Improvement" "Toys_and_Games" "Video_Games")

data_links=()
meta_links=()
for category in "${categories[@]}"
do
    data_links+=("https://datarepo.eng.ucsd.edu/mcauley_group/data/amazon_v2/categoryFiles/$category.json.gz")
    meta_links+=("https://datarepo.eng.ucsd.edu/mcauley_group/data/amazon_v2/metaFiles2/meta_$category.json.gz")
done

wget -P /data/ "${data_links[@]}" "${meta_links[@]}"

gunzip /data/*.gz

sed -i -e 's/"size":/"_size":/g' /data/meta_AMAZON_FASHION.json
sed -i -e 's/"size":/"_size":/g' /data/meta_Clothing_Shoes_and_Jewelry.json
