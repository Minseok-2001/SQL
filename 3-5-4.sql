select stamp
,url
,split(regexp_extract(url, '//[^/]+([^?#]+)'), '/')[safe_ordinal(2)] as path 1
,split(regexp_extract(url, '//[^/]+([^?#]+)'), '/')[safe_ordinal(3)] as path 2
from access_log
