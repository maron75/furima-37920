# README

##　usersテーブル

| Column             | Type       | Options                 |
| ------------------ | ---------- | ----------------------- |
| nickname           | string     | null:false              |
| email              | string     | null:false ,unique:true |
| encrypted_password | string     | null:false              |
| family_name        | string     | null:false              |
| first_name         | string     | null:false              |
| family_name_kana   | string     | null:false              |
| first_name_kana    | string     | null:false              |
| birth_day          | date       | null:false              |

### Association
* has_many:buys  dependent::destroy
* has_many:items dependent::destroy





## customersテーブル
| Column             | Type       | Options                 |
| ------------------ | ---------- | ----------------------- |
| zip_code           | string     | null:false              |
| prefecture         | integer      | null:false              |
| city               | string     | null:false              |
| address            | string     | null:false              |
| building_name      | string     |                         |
| phone_number       | string     | null:false              | 
| buy                | references | null:false ,foreign_key:true |

### Association
* belongs_to:buy






## items テーブル
| Column             | Type       | Options                      |
| ------------------ | ---------- | ----------------------------  |
| name               | string     | null:false                    |
| detail             | text       | null:false                    |
| category_id        | integer    | null:false                    |
| condition_id       | integer    | null:false                    |
| shipping_cost_id   | integer    | null:false                    |
| prefecture _id     | integer    | null:false                    |
| shipping_days_id   | integer    | null:false                    |
| price              | integer    | null:false                    |
| user               | references | null:false ,foreign_key:true  |

### Association
* has_one:buy
* belongs_to:user





## buysテーブル
| Column             | Type       | Options                      |
| ------------------ | ---------- | ----------------------------  |
| user               | references | null:false ,foreign_key:true |
| item               | references | null:false ,foreign_key:true |



### Association
* belongs_to:user  
* belongs_to:item 
* has_one:customer 








