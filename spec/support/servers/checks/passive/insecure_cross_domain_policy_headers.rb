require 'sinatra'

get '/crossdomain.xml' do
    <<EOHTML
<?xml version="1.0"?>
<!DOCTYPE cross-domain-policy SYSTEM
"http://www.adobe.com/xml/dtds/cross-domain-policy.dtd">
<cross-domain-policy>
   <site-control permitted-cross-domain-policies="all"/>
   <allow-http-request-headers-from domain="*" headers="*" secure="false"/>
</cross-domain-policy>
EOHTML
end
