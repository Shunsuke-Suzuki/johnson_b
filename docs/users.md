# Users

## index
### エンドポイント
[GET]/users
### レスポンス
```
{
    "users": [
        {
            "id": 2,
            "name": "test2",
            "email": "test2@gmail.com",
            "created_at": "2020-09-22T11:28:00.356Z",
            "updated_at": "2020-09-22T11:28:00.356Z"
        },
        {
            "id": 3,
            "name": "test3",
            "email": "test3@gmail.com",
            "created_at": "2020-09-22T11:28:05.945Z",
            "updated_at": "2020-09-22T11:28:05.945Z"
        },
        {
            "id": 4,
            "name": "test4",
            "email": "test4@gmail.com",
            "created_at": "2020-09-22T11:28:07.491Z",
            "updated_at": "2020-09-22T11:28:07.491Z"
        },
        {
            "id": 5,
            "name": "test5",
            "email": "test5@gmail.com",
            "created_at": "2020-09-22T11:28:08.603Z",
            "updated_at": "2020-09-22T11:28:08.603Z"
        }
    ]
}
```

## show
### エンドポイント
[GET]/users/:id
### レスポンス
```
{
    "user": {
        "id": 2,
        "name": "test3",
        "email": "test@gmail.com",
        "created_at": "2020-09-22T11:28:00.356Z",
        "updated_at": "2020-09-22T11:28:00.356Z"
    }
}
```

## create
### エンドポイント
[POST]/users
### リクエスト
```
{
  "user": {
    "name": "test10",
    "email": "test10@gmail.com",
    "password": "hogehoge",
    "password_confirmation": "hogehoge"
  } 
}
```
### レスポンス
```
{
    "message": "create ok"
}
```

## update
### エンドポイント
[PATCH]/users/:id
### リクエスト
```
{
  "user": {
    "name": "test_user",
    "email": "test_update@gmail.com" 
  } 
}
```
### レスポンス
```
{
    "message": "update ok"
}
```

## destroy
### エンドポイント
[DELETE]/users/:id
### レスポンス
```
{
    "message": "user destroied"
}
```
