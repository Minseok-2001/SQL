SELECT stamp, url,
regexp_extract(url, '//[^/]+([^?#]+)') as path,
regexp_extract(url, 'id=([^&]*)') as id
FROM 'sqlminseok.ch03.access_log';
