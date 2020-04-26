# Aliyun Log Service PHP SDK

## API VERSION

0.6.1

## SDK RELEASE TIME

2018-02-18

## Introduction

Log Service SDK for PHP，used to set/get log data to Aliyun Log Service(www.aliyun.com/product/sls).

API Reference: [中文](https://help.aliyun.com/document_detail/29007.html) [ENGLISH](https://www.alibabacloud.com/help/doc-detail/29007.htm)

### Use composer

`composer require hongjianghuang/aliyun-log-php-sdk`

### Examples

```php
$log_item = new \Aliyun_Log_Models_LogItem();
$log_item->setTime(time());
$log_item->setContents($contents);

$endpoint = '';
$access_key_id = '';
$access_key = '';
$project = '';
$logstore = ''
$topic = 'test';
$logitems = [
    $log_item,
];

$client = new \Aliyun_Log_Client($endpoint, $access_key_id, $access_key);
$request = new \Aliyun_Log_Models_PutLogsRequest($project, $logstore, $topic, $source, $logitems);
$response = @$client->putLogs($request);
if (200 != array_get($response->getAllHeaders(), '_info.http_code')) {
    throw new \Exception('Request aliyun error');
}
```

### Summary

1. Request-Request style Restful API interface
2. Use Protocol buffer to send data 
3. Data can be compressed when sending to server
4. Aliyun_Log_Exception will be thrown if any error happen
5. Introduce simple logger for submit log easily with different levels
6. Create local log cache to submit several logs in single http post.

## Environment Requirement

1. PHP 7.1.7 and later：Master Branch
2. PHP 5.2+：[Tree v1.0](https://github.com/aliyun/aliyun-log-php-sdk/tree/v1.0)

