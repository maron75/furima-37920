# README

##　usersテーブル

| Column             | Type       | Options                 |
| ------------------ | ---------- | ----------------------- |
| nickname           | string　   | null:false              |
| email              | string     | null:false              |
| encrypted_password | string     | null:false              |
| user_image         | string     |                         |
| introduction       | text       |                         |
| family_name        | string     | null:false              |
| first_name         | string     | null:false              |
| family_name_kana   | string     | null:false              |
| first_name_kane    | string     | null:false              |
| birth_day          | date       | null:false              |

### Association
* has_many:items  dependent::destroy
* has_one:customer  dependent::destroy
* has_one:card  dependent::destroy





## customerテーブル
| Column             | Type       | Options                 |
| ------------------ | ---------- | ----------------------- |
| user_id            | string     | null:false              |
| family_name        | string     | null:false              |
| first_name         | string     | null:false              |
| family_name_kana   | string     | null:false              |
| first_name_kana    | string     | null:false              |
| post_code          | string     | null:false              |
| prefecture         | string     | null:false              |
| city               | string     | null:false              |
| address            | string     | null:false              |
| building_name      | string     |                         |
| phone_number       | string     |                         |     

### Association
* belong_to:user





## items テーブル
| Column             | Type       | Options                      |
| ------------------ | ---------- | ----------------------------  |
| name               | string     | null:false                    |
| price              | string     | null:false                    |
| description        | string     | null:false                    |
| statues            | string     | null:false                    |
| size               | string     | null:false                    |
| shipping_cost      | string     | null:false                    |
| shipping_days      | string     | null:false                    |
| prefecture_id      | string     | null:false                    |
| judgment_id        | string     |                               |
| category_id        | integer    | null:false ,foreign_key: true ｜
| brand_id           | integer    | null:false ,foreign_key: true ｜
| shipping_id        | integer    | null:false ,foreign_key: true　｜
| user_id            | integer    | null:false ,foreign_key: true  |

### Association
* belong_to:user  dependent::destroy
* belong_to:category  dependent::destroy
* belong_to:brand  dependent::destroy
* has_many:images dependent::destroy





## cardテーブル
| Column             | Type       | Options                      |
| ------------------ | ---------- | ----------------------------  |
| user_id            | integer    | null:false                   |
| customer_id        | string     | null:false                   |
| card_id            | string     | null:false                   |


### Association
* belongs_to:user




## categoryテーブル
| Column             | Type       | Options                      |
| ------------------ | ---------- | ----------------------------  |
| name               | string     | null:false                   |
| ancestry           | string     |                              |

### Association
* has_many:items




## imageテーブル
| Column             | Type       | Options                      |
| ------------------ | ---------- | ----------------------------  |
| image              | string     | null:false                   |
| items_id           | integer    | null:false ,foreign_key: true |

### Association
* belongs_to:items




## brandテーブル
| Column             | Type       | Options                      |
| ------------------ | ---------- | ----------------------------  |
| name               | string     | 　　　　　　                    |

### Association
*has_many:items

