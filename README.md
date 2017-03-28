# Getting started

## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build uber_api.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install uber_api-1.0.0.gem ```

![Building Gem](https://apidocs.io/illustration/ruby?step=buildSDK&workspaceFolder=Uber%20API-Ruby&workspaceName=Uber%20API-Ruby&projectName=uber_api&gemName=uber_api&gemVer=1.0.0)

## How to Use

The following section explains how to use the UberApi Ruby Gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting ``` File -> Close Project ```. Next, click on ``` Create New Project ``` to create a new project from scratch.

![Create a new project in RubyMine](https://apidocs.io/illustration/ruby?step=createNewProject0&workspaceFolder=Uber%20API-Ruby&workspaceName=UberApi&projectName=uber_api&gemName=uber_api&gemVer=1.0.0)

Next, provide ``` TestApp ``` as the project name, choose ``` Rails Application ``` as the project type, and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 1](https://apidocs.io/illustration/ruby?step=createNewProject1&workspaceFolder=Uber%20API-Ruby&workspaceName=UberApi&projectName=uber_api&gemName=uber_api&gemVer=1.0.0)

In the next dialog make sure that correct *Ruby SDK* is being used (minimum 2.0.0) and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 2](https://apidocs.io/illustration/ruby?step=createNewProject2&workspaceFolder=Uber%20API-Ruby&workspaceName=UberApi&projectName=uber_api&gemName=uber_api&gemVer=1.0.0)

This will create a new Rails Application project with an existing set of files and folder.

### 2. Add reference of the gem

In order to use the UberApi gem in the new project we must add a gem reference. Locate the ```Gemfile``` in the *Project Explorer* window under the ``` TestApp ``` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: ``` gem 'uber_api', '~> 1.0.0' ```

![Add references of the Gemfile](https://apidocs.io/illustration/ruby?step=addReference&workspaceFolder=Uber%20API-Ruby&workspaceName=UberApi&projectName=uber_api&gemName=uber_api&gemVer=1.0.0)

### 3. Adding a new Rails Controller

Once the ``` TestApp ``` project is created, a folder named ``` controllers ``` will be visible in the *Project Explorer* under the following path: ``` TestApp > app > controllers ```. Right click on this folder and select ``` New -> Run Rails Generator... ```.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?step=addCode0&workspaceFolder=Uber%20API-Ruby&workspaceName=UberApi&projectName=uber_api&gemName=uber_api&gemVer=1.0.0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the ``` controller ``` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?step=addCode1&workspaceFolder=Uber%20API-Ruby&workspaceName=UberApi&projectName=uber_api&gemName=uber_api&gemVer=1.0.0)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide ``` Hello ``` and include an action named ``` Index ``` and click ``` OK ```.

![Add a new Controller](https://apidocs.io/illustration/ruby?step=addCode2&workspaceFolder=Uber%20API-Ruby&workspaceName=UberApi&projectName=uber_api&gemName=uber_api&gemVer=1.0.0)

A new controller class anmed ``` HelloController ``` will be created in a file named ``` hello_controller.rb ``` containing a method named ``` Index ```. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?step=addCode3&workspaceFolder=Uber%20API-Ruby&workspaceName=UberApi&projectName=uber_api&gemName=uber_api&gemVer=1.0.0)

## How to Test

You can test the generated SDK and the server with automatically generated test
cases as follows:

  1. From terminal/cmd navigate to the root directory of the SDK.
  2. Invoke: `bundle exec rake`

## Initialization

### Authentication
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| o_auth_access_token | The OAuth 2.0 access token to be set before API calls |



API client can be initialized as following.

```ruby
# Configuration parameters and credentials
o_auth_access_token = "o_auth_access_token"; # The OAuth 2.0 access token to be set before API calls

client = UberApi::UberApiClient.new(o_auth_access_token)
```

The added initlization code can be debugged by putting a breakpoint in the ``` Index ``` method and running the project in debug mode by selecting ``` Run -> Debug 'Development: TestApp' ```.

![Debug the TestApp](https://apidocs.io/illustration/ruby?step=addCode4&workspaceFolder=Uber%20API-Ruby&workspaceName=UberApi&projectName=uber_api&gemName=uber_api&gemVer=1.0.0&initLine=client%2520%253D%2520UberApiClient.new%2528%2527o_auth_access_token%2527%2529)

## Class Reference

### <a name="list_of_controllers"></a>List of Controllers

* [APIController](#api_controller)

### <a name="api_controller"></a>![Class: ](https://apidocs.io/img/class.png ".APIController") APIController

#### Get singleton instance

The singleton instance of the ``` APIController ``` class can be accessed from the API Client.

```ruby
client = client.client
```

#### <a name="get_product_detail_by_id"></a>![Method: ](https://apidocs.io/img/method.png ".APIController.get_product_detail_by_id") get_product_detail_by_id

> Get product details w.r.t id


```ruby
def get_product_detail_by_id(product_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| product_id |  ``` Required ```  | Unique identifier representing a specific product for a given latitude & longitude. For example, uberX in San Francisco will have a different product_id than uberX in Los Angeles. |


#### Example Usage

```ruby
product_id = 'product_id'

result = client.get_product_detail_by_id(product_id)

```


#### <a name="get_user_profile"></a>![Method: ](https://apidocs.io/img/method.png ".APIController.get_user_profile") get_user_profile

> The User Profile endpoint returns information about the Uber user that has authorized with the application.


```ruby
def get_user_profile; end
```

#### Example Usage

```ruby

result = client.get_user_profile()

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Malformed request. |
| 401 | Unauthorized the request requires user authentication (not logged in). |
| 403 | Forbidden. Also used for unauthorized requests such as improper OAuth 2.0 scopes or permissions issues. |
| 404 | Not found. |
| 406 | Unacceptable content type. Client sent an accepts header for a content type which does not exist on the server. Body includes a list of acceptable content types: ?Unacceptable content type. Request resource as: application/json, etc. |
| 422 | Invalid request. The request body is parse-able however with invalid content. |
| 429 | Too Many Requests. Rate limited. |
| 500 | Internal Server Error. |



#### <a name="get_products_types"></a>![Method: ](https://apidocs.io/img/method.png ".APIController.get_products_types") get_products_types

> The Products endpoint returns information about the Uber products offered at a given location. The response includes the display name and other details about each product, and lists the products in the proper display order.


```ruby
def get_products_types(latitude, 
                           longitude); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| latitude |  ``` Required ```  | Latitude component of location. |
| longitude |  ``` Required ```  | Longitude component of location. |


#### Example Usage

```ruby
latitude = 139.610573416394
longitude = 139.610573416394

result = client.get_products_types(latitude, longitude)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Malformed request. |
| 401 | Unauthorized the request requires user authentication (not logged in). |
| 403 | Forbidden. Also used for unauthorized requests such as improper OAuth 2.0 scopes or permissions issues. |
| 404 | Not found. |
| 406 | Unacceptable content type. Client sent an accepts header for a content type which does not exist on the server. Body includes a list of acceptable content types: ?Unacceptable content type. Request resource as: application/json, etc. |
| 422 | Invalid request. The request body is parse-able however with invalid content. |
| 429 | Too Many Requests. Rate limited. |
| 500 | Internal Server Error. |



#### <a name="get_request_details"></a>![Method: ](https://apidocs.io/img/method.png ".APIController.get_request_details") get_request_details

> Get the real time status of an ongoing trip that was created using the Ride Request endpoint.


```ruby
def get_request_details(request_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| request_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
request_id = 'request_id'

result = client.get_request_details(request_id)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Malformed request. |
| 401 | Unauthorized the request requires user authentication (not logged in). |
| 403 | Forbidden. Also used for unauthorized requests such as improper OAuth 2.0 scopes or permissions issues. |
| 404 | Not found. |
| 406 | Unacceptable content type. Client sent an accepts header for a content type which does not exist on the server. Body includes a list of acceptable content types, such as ?Unacceptable content type. Request resource as: application/json. |
| 409 | A conflict needs to be resolved before the request can be made. |
| 422 | Invalid request. The request body is parse-able however with invalid content or there are issues with a rider's user account. |
| 429 | Too Many Requests. Rate limited. |
| 500 | Internal Server Error |



#### <a name="get_user_activity_v_1_1"></a>![Method: ](https://apidocs.io/img/method.png ".APIController.get_user_activity_v_1_1") get_user_activity_v_1_1

> The User Activity endpoint returns data about a user's lifetime activity with Uber. The response will include pickup locations and times, dropoff locations and times, the distance of past requests, and information about which products were requested.


```ruby
def get_user_activity_v_1_1(limit, 
                                offset); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| limit |  ``` Required ```  | Number of items to return for pagging |
| offset |  ``` Required ```  | Page offset for pagging |


#### Example Usage

```ruby
limit = 139
offset = 139

result = client.get_user_activity_v_1_1(limit, offset)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Malformed request. |
| 401 | Unauthorized the request requires user authentication (not logged in). |
| 403 | Forbidden. Also used for unauthorized requests such as improper OAuth 2.0 scopes or permissions issues. |
| 404 | Not found. |
| 406 | Unacceptable content type. Client sent an accepts header for a content type which does not exist on the server. Body includes a list of acceptable content types: ?Unacceptable content type. Request resource as: application/json, etc. |
| 422 | Invalid request. The request body is parse-able however with invalid content. |
| 429 | Too Many Requests. Rate limited. |
| 500 | Internal Server Error. |



#### <a name="get_time_estimates"></a>![Method: ](https://apidocs.io/img/method.png ".APIController.get_time_estimates") get_time_estimates

> The Time Estimates endpoint returns ETAs for all products offered at a given location, with the responses expressed as integers in seconds. We recommend that this endpoint be called every minute to provide the most accurate, up-to-date ETAs.


```ruby
def get_time_estimates(start_latitude, 
                           start_longitude, 
                           customer_uuid = nil, 
                           product_id = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| start_latitude |  ``` Required ```  | Latitude component of the start location |
| start_longitude |  ``` Required ```  | Longitude component of the start location |
| customer_uuid |  ``` Optional ```  | The customer id interested in estimate |
| product_id |  ``` Optional ```  | Id of the requested product |


#### Example Usage

```ruby
start_latitude = 139.610573416394
start_longitude = 139.610573416394
customer_uuid = 'customer_uuid'
product_id = 'product_id'

result = client.get_time_estimates(start_latitude, start_longitude, customer_uuid, product_id)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Malformed request. |
| 401 | Unauthorized the request requires user authentication (not logged in). |
| 403 | Forbidden. Also used for unauthorized requests such as improper OAuth 2.0 scopes or permissions issues. |
| 404 | Not found. |
| 406 | Unacceptable content type. Client sent an accepts header for a content type which does not exist on the server. Body includes a list of acceptable content types: ?Unacceptable content type. Request resource as: application/json, etc. |
| 422 | Invalid request. The request body is parse-able however with invalid content. |
| 429 | Too Many Requests. Rate limited. |
| 500 | Internal Server Error. |



#### <a name="get_price_estimates"></a>![Method: ](https://apidocs.io/img/method.png ".APIController.get_price_estimates") get_price_estimates

> The Price Estimates endpoint returns an estimated price range for each product offered at a given location. The price estimate is provided as a formatted string with the full price range and the localized currency symbol.


```ruby
def get_price_estimates(end_latitude, 
                            end_longitude, 
                            start_latitude, 
                            start_longitude); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| end_latitude |  ``` Required ```  | Latitude component of end location. |
| end_longitude |  ``` Required ```  | Longitude component of end location. |
| start_latitude |  ``` Required ```  | Latitude component of start location. |
| start_longitude |  ``` Required ```  | Longitude component of start location. |


#### Example Usage

```ruby
end_latitude = 139.610573416394
end_longitude = 139.610573416394
start_latitude = 139.610573416394
start_longitude = 139.610573416394

result = client.get_price_estimates(end_latitude, end_longitude, start_latitude, start_longitude)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Malformed request. |
| 401 | Unauthorized the request requires user authentication (not logged in). |
| 403 | Forbidden. Also used for unauthorized requests such as improper OAuth 2.0 scopes or permissions issues. |
| 404 | Not found. |
| 406 | Unacceptable content type. Client sent an accepts header for a content type which does not exist on the server. Body includes a list of acceptable content types: ?Unacceptable content type. Request resource as: application/json, etc. |
| 422 | Invalid request. The request body is parse-able however with invalid content. |
| 429 | Too Many Requests. Rate limited. |
| 500 | Internal Server Error. |



#### <a name="get_request_map"></a>![Method: ](https://apidocs.io/img/method.png ".APIController.get_request_map") get_request_map

> Get a map with a visual representation of a Request.


```ruby
def get_request_map(request_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| request_id |  ``` Required ```  | Unique identifier representing a Request. |


#### Example Usage

```ruby
request_id = 'request_id'

result = client.get_request_map(request_id)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Malformed request. |
| 401 | Unauthorized the request requires user authentication (not logged in). |
| 403 | Forbidden. Also used for unauthorized requests such as improper OAuth 2.0 scopes or permissions issues |
| 404 | Not found |
| 406 | Unacceptable content type. Client sent an accepts header for a content type which does not exist on the server. Body includes a list of acceptable content types, such as ?Unacceptable content type. Request resource as: application/json. |
| 409 | A conflict needs to be resolved before the request can be made. |
| 422 | Invalid request. The request body is parse-able however with invalid content or there are issues with a rider's user account. |
| 429 | Too Many Requests. Rate limited. |
| 500 | Internal Server Error. |



#### <a name="delete_request_cancel"></a>![Method: ](https://apidocs.io/img/method.png ".APIController.delete_request_cancel") delete_request_cancel

> Cancel an ongoing Request on behalf of a rider.


```ruby
def delete_request_cancel(request_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| request_id |  ``` Required ```  | Unique identifier representing a Request. |


#### Example Usage

```ruby
request_id = 'request_id'

client.delete_request_cancel(request_id)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Malformed request. |
| 401 | Unauthorized the request requires user authentication (not logged in). |
| 403 | Forbidden. Also used for unauthorized requests such as improper OAuth 2.0 scopes or permissions issues. |
| 404 | Not found |
| 406 | Unacceptable content type. Client sent an accepts header for a content type which does not exist on the server. Body includes a list of acceptable content types, such as ?Unacceptable content type. Request resource as: application/json. |
| 409 | A conflict needs to be resolved before the request can be made |
| 422 | Invalid request. The request body is parse-able however with invalid content or there are issues with a rider's user account. |
| 429 | Too Many Requests. Rate limited. |
| 500 | Internal Server Error |



#### <a name="create_request"></a>![Method: ](https://apidocs.io/img/method.png ".APIController.create_request") create_request

> The Request endpoint allows a ride to be requested on behalf of an Uber user given their desired product, start, and end locations. Please review the Sandbox documentation on how to develop and test against these endpoints without making real-world Requests and being charged.


```ruby
def create_request(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = RequestBody.new

result = client.create_request(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Malformed request |
| 401 | Unauthorized the request requires user authentication (not logged in). |
| 403 | Forbidden. Also used for unauthorized requests such as improper OAuth 2.0 scopes or permissions issues. |
| 404 | Not found |
| 406 | Unacceptable content type. Client sent an accepts header for a content type which does not exist on the server. Body includes a list of acceptable content types, such as ?Unacceptable content type. Request resource as: application/json |
| 409 | A conflict needs to be resolved before the request can be made. |
| 422 | Invalid request. The request body is parse-able however with invalid content or there are issues with a rider's user account. |
| 429 | Too Many Requests. Rate limited. |
| 500 | Internal Server Error. |



#### <a name="get_promotions"></a>![Method: ](https://apidocs.io/img/method.png ".APIController.get_promotions") get_promotions

> The Promotions endpoint returns information about the promotion that will be available to a new user based on their activity's location. These promotions do not apply for existing users.


```ruby
def get_promotions(end_latitude, 
                       end_longitude, 
                       start_latitude, 
                       start_longitude); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| end_latitude |  ``` Required ```  | Latitude component of end location. |
| end_longitude |  ``` Required ```  | Longitude component of end location. |
| start_latitude |  ``` Required ```  | Latitude component of start location. |
| start_longitude |  ``` Required ```  | Longitude component of start location |


#### Example Usage

```ruby
end_latitude = 139.610573416394
end_longitude = 139.610573416394
start_latitude = 139.610573416394
start_longitude = 139.610573416394

result = client.get_promotions(end_latitude, end_longitude, start_latitude, start_longitude)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Malformed request. |
| 401 | Unauthorized the request requires user authentication (not logged in). |
| 403 | Forbidden. Also used for unauthorized requests such as improper OAuth 2.0 scopes or permissions issues. |
| 404 | Not found. |
| 406 | Unacceptable content type. Client sent an accepts header for a content type which does not exist on the server. Body includes a list of acceptable content types, such as ?Unacceptable content type. Request resource as: application/json. |
| 409 | A conflict needs to be resolved before the request can be made. |
| 422 | Invalid request. The request body is parse-able however with invalid content or there are issues with a rider's user account. |
| 429 | Too Many Requests. Rate limited |
| 500 | Internal Server Error. |



[Back to List of Controllers](#list_of_controllers)



