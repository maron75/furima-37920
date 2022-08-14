# README

##　usersテーブル

| Column             | Type       | Options                 |
| ------------------ | ---------- | ----------------------- |
| nickname           | string　   | null:false ,unique:true |
| email              | string     | null:false              |
| encrypted_password | string     | null:false              |
| family_name        | string     | null:false              |
| first_name         | string     | null:false              |
| family_name_kana   | string     | null:false              |
| first_name_kane    | string     | null:false              |
| birth_day          | date       | null:false              |

### Association
* has_many:items  dependent::destroy
* has_one:customer  dependent::destroy
* has_one:purchase  dependent::destroy





## customerテーブル
| Column             | Type       | Options                 |
| ------------------ | ---------- | ----------------------- |
| card_no            | string     | null:false              |
| effective_date     | string     | nill:false              |
| zip_code           | string     | null:false              |
| prefecture         | string     | null:false              |
| city               | string     | null:false              |
| address            | string     | null:false              |
| building_name      | string     |                         |
| phone_number       | string     | null:false              |     

### Association
* belong_to:user





## items テーブル
| Column             | Type       | Options                      |
| ------------------ | ---------- | ----------------------------  |
| image              |            | null:false
| name               | string     | null:false                    |
| detail             | text       | null:false                    |
| category           | string     | null:false                    |
| condition          | string     | null:false                    |
| shipping_cost      | string     | null:false                    |
| region             | sting      | null:false                    |
| shipping_days      | string     | null:false                    |
| price              | string     | null:false                    |
| commission         | string     | null:false                    |
| benefit            | string     | null:false                    |

### Association
* belong_to:user  dependent::destroy





## purchaseテーブル
| Column             | Type       | Options                      |
| ------------------ | ---------- | ----------------------------  |
| user_id            | references | null:false ,foreign_key:true |
| items_id           | references | null:false ,foreign_key:true |



### Association
* belongs_to:user  dependent::destroy









