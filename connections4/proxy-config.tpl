<?xml version="1.0" encoding="UTF-8"?><!-- Copyright IBM Corp. 2008, 2012  All Rights Reserved.              --><!-- 5724-E76                                                          --><!-- This template file is used to create the proxy-config.xml file
     when Lotus Connections starts.  Any customizations to the proxy
     configuration should be made here.  Customized policies should be made
     after the Connections policies, at the point marked "BEGIN
     CUSTOMIZATIONS HERE".  For proper functioning of the Connections
     services, do not modify the Connections template policies.  

     For more detailed information about the contents of this file, please
     see the Lotus Connections InfoCenter.  --><proxy:config xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:proxy="http://www.ibm.com/xmlns/prod/sw/ajax/proxy-config/1.0" id="proxy-config" xsi:schemaLocation="http://www.ibm.com/xmlns/prod/sw/ajax/proxy-config/1.0 proxy-config.xsd">

<proxy:proxy-rules>
   <proxy:mapping contextpath="/http/*"/>
   <proxy:mapping contextpath="/https/*"/>

    <!-- These template policies are replaced at system start up with 
       policies for each enabled service in the LotusConnections-config.xml
       file.  They are each replaced with one policy for the http URL and one
       for the https URL (if the service href is enabled).  These policies 
       allow the proxy to exchange all cookies and headers, and to perform any
       HTTP method with each of the Connections services. 
       *****  Do not edit these policies.   *******-->
    <proxy:policy url="{activitiesSvcRef}/*" acf="none" basic-auth-support="true">
        <proxy:actions>
            <proxy:method>GET</proxy:method>
            <proxy:method>POST</proxy:method>
            <proxy:method>PUT</proxy:method>
            <proxy:method>DELETE</proxy:method>
        </proxy:actions>
        <proxy:headers>
            <proxy:header>User-Agent</proxy:header>
            <proxy:header>Accept.*</proxy:header>
            <proxy:header>Content.*</proxy:header>
            <proxy:header>Authorization.*</proxy:header>
            <proxy:header>If-.*</proxy:header>
            <proxy:header>Pragma</proxy:header>
            <proxy:header>Cache-Control</proxy:header>
            <proxy:header>X-Update-Nonce</proxy:header>
        </proxy:headers>
    </proxy:policy>

    <proxy:policy url="{blogsSvcRef}/*" acf="none" basic-auth-support="true">
        <proxy:actions>
            <proxy:method>GET</proxy:method>
            <proxy:method>POST</proxy:method>
            <proxy:method>PUT</proxy:method>
            <proxy:method>DELETE</proxy:method>
        </proxy:actions>
        <proxy:headers>
            <proxy:header>User-Agent</proxy:header>
            <proxy:header>Accept.*</proxy:header>
            <proxy:header>Content.*</proxy:header>
            <proxy:header>Authorization.*</proxy:header>
            <proxy:header>If-.*</proxy:header>
            <proxy:header>Pragma</proxy:header>
            <proxy:header>Cache-Control</proxy:header>
            <proxy:header>X-Update-Nonce</proxy:header>
        </proxy:headers>
    </proxy:policy>

    <proxy:policy url="{communitiesSvcRef}/*" acf="none" basic-auth-support="true">
        <proxy:actions>
            <proxy:method>GET</proxy:method>
            <proxy:method>POST</proxy:method>
            <proxy:method>PUT</proxy:method>
            <proxy:method>DELETE</proxy:method>
        </proxy:actions>
        <proxy:headers>
            <proxy:header>User-Agent</proxy:header>
            <proxy:header>Accept.*</proxy:header>
            <proxy:header>Content.*</proxy:header>
            <proxy:header>Authorization.*</proxy:header>
            <proxy:header>If-.*</proxy:header>
            <proxy:header>Pragma</proxy:header>
            <proxy:header>Cache-Control</proxy:header>
            <proxy:header>X-Update-Nonce</proxy:header>
        </proxy:headers>
    </proxy:policy>

    <proxy:policy url="{dogearSvcRef}/*" acf="none" basic-auth-support="true">
        <proxy:actions>
            <proxy:method>GET</proxy:method>
            <proxy:method>POST</proxy:method>
            <proxy:method>PUT</proxy:method>
            <proxy:method>DELETE</proxy:method>
        </proxy:actions>
        <proxy:headers>
            <proxy:header>User-Agent</proxy:header>
            <proxy:header>Accept.*</proxy:header>
            <proxy:header>Content.*</proxy:header>
            <proxy:header>Authorization.*</proxy:header>
            <proxy:header>If-.*</proxy:header>
            <proxy:header>Pragma</proxy:header>
            <proxy:header>Cache-Control</proxy:header>
            <proxy:header>X-Update-Nonce</proxy:header>
        </proxy:headers>
    </proxy:policy>

    <proxy:policy url="{filesSvcRef}/*" acf="none" basic-auth-support="true">
        <proxy:actions>
<proxy:method>GET</proxy:method>
<proxy:method>POST</proxy:method>
<proxy:method>PUT</proxy:method>
<proxy:method>DELETE</proxy:method>
<proxy:method>HEAD</proxy:method>
</proxy:actions>
        <proxy:headers>
            <proxy:header>User-Agent</proxy:header>
            <proxy:header>Accept.*</proxy:header>
            <proxy:header>Content.*</proxy:header>
            <proxy:header>Authorization.*</proxy:header>
            <proxy:header>X-Method-Override</proxy:header>
            <proxy:header>If-.*</proxy:header>
            <proxy:header>Pragma</proxy:header>
            <proxy:header>Cache-Control</proxy:header>
            <proxy:header>X-Update-Nonce</proxy:header>
        </proxy:headers>
    </proxy:policy>

    <proxy:policy url="{forumsSvcRef}/*" acf="none" basic-auth-support="true">
        <proxy:actions>
            <proxy:method>GET</proxy:method>
            <proxy:method>POST</proxy:method>
            <proxy:method>PUT</proxy:method>
            <proxy:method>DELETE</proxy:method>
        </proxy:actions>
        <proxy:headers>
            <proxy:header>User-Agent</proxy:header>
            <proxy:header>Accept.*</proxy:header>
            <proxy:header>Content.*</proxy:header>
            <proxy:header>Authorization.*</proxy:header>
            <proxy:header>X-Method-Override</proxy:header>
            <proxy:header>If-.*</proxy:header>
            <proxy:header>Pragma</proxy:header>
            <proxy:header>Cache-Control</proxy:header>
            <proxy:header>X-Update-Nonce</proxy:header>
        </proxy:headers>
    </proxy:policy>

    <proxy:policy url="{homepageSvcRef}/*" acf="none" basic-auth-support="true">
        <proxy:actions>
            <proxy:method>GET</proxy:method>
            <proxy:method>POST</proxy:method>
            <proxy:method>PUT</proxy:method>
            <proxy:method>DELETE</proxy:method>
        </proxy:actions>
        <proxy:headers>
            <proxy:header>User-Agent</proxy:header>
            <proxy:header>Accept.*</proxy:header>
            <proxy:header>Content.*</proxy:header>
            <proxy:header>Authorization.*</proxy:header>
            <proxy:header>X-Method-Override</proxy:header>
            <proxy:header>If-.*</proxy:header>
            <proxy:header>Pragma</proxy:header>
            <proxy:header>Cache-Control</proxy:header>
            <proxy:header>X-Update-Nonce</proxy:header>
        </proxy:headers>
    </proxy:policy>

    <proxy:policy url="{newsSvcRef}/*" acf="none" basic-auth-support="true">
        <proxy:actions>
            <proxy:method>GET</proxy:method>
            <proxy:method>POST</proxy:method>
            <proxy:method>PUT</proxy:method>
            <proxy:method>DELETE</proxy:method>
        </proxy:actions>
        <proxy:headers>
            <proxy:header>User-Agent</proxy:header>
            <proxy:header>Accept.*</proxy:header>
            <proxy:header>Content.*</proxy:header>
            <proxy:header>Authorization.*</proxy:header>
            <proxy:header>X-Method-Override</proxy:header>
            <proxy:header>If-.*</proxy:header>
            <proxy:header>Pragma</proxy:header>
            <proxy:header>Cache-Control</proxy:header>
            <proxy:header>X-Update-Nonce</proxy:header>
        </proxy:headers>
    </proxy:policy>

    <proxy:policy url="{profilesSvcRef}/*" acf="none" basic-auth-support="true">
        <proxy:actions>
            <proxy:method>GET</proxy:method>
            <proxy:method>POST</proxy:method>
            <proxy:method>PUT</proxy:method>
            <proxy:method>DELETE</proxy:method>
        </proxy:actions>
        <proxy:headers>
            <proxy:header>User-Agent</proxy:header>
            <proxy:header>Accept.*</proxy:header>
            <proxy:header>Content.*</proxy:header>
            <proxy:header>Authorization.*</proxy:header>
            <proxy:header>X_LConn_MV_Message_Summary</proxy:header>
            <proxy:header>X_LConn_MV_Message_Type</proxy:header>
            <proxy:header>If-.*</proxy:header>
            <proxy:header>Pragma</proxy:header>
            <proxy:header>Cache-Control</proxy:header>
            <proxy:header>X-Update-Nonce</proxy:header>
        </proxy:headers>
    </proxy:policy>
    
    <proxy:policy url="{opensocialSvcRef}/*" acf="none" basic-auth-support="true">
        <proxy:actions>
            <proxy:method>GET</proxy:method>
            <proxy:method>POST</proxy:method>
            <proxy:method>PUT</proxy:method>
            <proxy:method>DELETE</proxy:method>
        </proxy:actions>
        <proxy:headers>
            <proxy:header>User-Agent</proxy:header>
            <proxy:header>Accept.*</proxy:header>
            <proxy:header>Content.*</proxy:header>
            <proxy:header>Authorization.*</proxy:header>
            <proxy:header>If-.*</proxy:header>
            <proxy:header>Pragma</proxy:header>
            <proxy:header>Cache-Control</proxy:header>
            <proxy:header>X-Update-Nonce</proxy:header>
        </proxy:headers>
    </proxy:policy>

    <proxy:policy url="{searchSvcRef}/*" acf="none" basic-auth-support="true">
        <proxy:actions>
            <proxy:method>GET</proxy:method>
            <proxy:method>POST</proxy:method>
            <proxy:method>PUT</proxy:method>
            <proxy:method>DELETE</proxy:method>
        </proxy:actions>
        <proxy:headers>
            <proxy:header>User-Agent</proxy:header>
            <proxy:header>Accept.*</proxy:header>
            <proxy:header>Content.*</proxy:header>
            <proxy:header>Authorization.*</proxy:header>
            <proxy:header>If-.*</proxy:header>
            <proxy:header>Pragma</proxy:header>
            <proxy:header>Cache-Control</proxy:header>
            <proxy:header>X-Update-Nonce</proxy:header>
        </proxy:headers>
    </proxy:policy>

    <proxy:policy url="{wikisSvcRef}/*" acf="none" basic-auth-support="true">
        <proxy:actions>
            <proxy:method>GET</proxy:method>
            <proxy:method>POST</proxy:method>
            <proxy:method>PUT</proxy:method>
            <proxy:method>DELETE</proxy:method>
        </proxy:actions>
        <proxy:headers>
            <proxy:header>User-Agent</proxy:header>
            <proxy:header>Accept.*</proxy:header>
            <proxy:header>Content.*</proxy:header>
            <proxy:header>Authorization.*</proxy:header>
            <proxy:header>X-Method-Override</proxy:header>
            <proxy:header>If-.*</proxy:header>
            <proxy:header>Pragma</proxy:header>
            <proxy:header>Cache-Control</proxy:header>
            <proxy:header>X-Update-Nonce</proxy:header>
        </proxy:headers>
    </proxy:policy>
    

    <proxy:policy url="{webresourcesSvcRef}/*" acf="none" basic-auth-support="true">
        <proxy:actions>
            <proxy:method>GET</proxy:method>
            <proxy:method>POST</proxy:method>
            <proxy:method>PUT</proxy:method>
            <proxy:method>DELETE</proxy:method>
        </proxy:actions>
        <proxy:headers>
            <proxy:header>User-Agent</proxy:header>
            <proxy:header>Accept.*</proxy:header>
            <proxy:header>Content.*</proxy:header>
            <proxy:header>Authorization.*</proxy:header>
            <proxy:header>X-Method-Override</proxy:header>
            <proxy:header>If-.*</proxy:header>
            <proxy:header>Pragma</proxy:header>
            <proxy:header>Cache-Control</proxy:header>
            <proxy:header>X-Update-Nonce</proxy:header>
        </proxy:headers>
    </proxy:policy>
    
    <proxy:policy url="{oauthproviderSvcRef}/*" acf="none" basic-auth-support="true">
        <proxy:actions>
            <proxy:method>GET</proxy:method>
            <proxy:method>POST</proxy:method>
            <proxy:method>PUT</proxy:method>
            <proxy:method>DELETE</proxy:method>
        </proxy:actions>
        <proxy:headers>
            <proxy:header>User-Agent</proxy:header>
            <proxy:header>Accept.*</proxy:header>
            <proxy:header>Content.*</proxy:header>
            <proxy:header>Authorization.*</proxy:header>
            <proxy:header>X-Method-Override</proxy:header>
            <proxy:header>If-.*</proxy:header>
            <proxy:header>Pragma</proxy:header>
            <proxy:header>Cache-Control</proxy:header>
            <proxy:header>X-Update-Nonce</proxy:header>
        </proxy:headers>
    </proxy:policy>
    
    <proxy:policy url="{bookmarkletSvcRef}/*" acf="none" basic-auth-support="true">
        <proxy:actions>
            <proxy:method>GET</proxy:method>
            <proxy:method>POST</proxy:method>
            <proxy:method>PUT</proxy:method>
            <proxy:method>DELETE</proxy:method>
        </proxy:actions>
        <proxy:headers>
            <proxy:header>User-Agent</proxy:header>
            <proxy:header>Accept.*</proxy:header>
            <proxy:header>Content.*</proxy:header>
            <proxy:header>Authorization.*</proxy:header>
            <proxy:header>X-Method-Override</proxy:header>
            <proxy:header>If-.*</proxy:header>
            <proxy:header>Pragma</proxy:header>
            <proxy:header>Cache-Control</proxy:header>
            <proxy:header>X-Update-Nonce</proxy:header>
        </proxy:headers>
    </proxy:policy>

    <!-- Connections Mail -->
    <proxy:policy url="{connectionsmailSvcRef}/*" acf="none" basic-auth-support="true" auth-support="true">
        <proxy:actions>
            <proxy:method>GET</proxy:method>
            <proxy:method>POST</proxy:method>
            <proxy:method>PUT</proxy:method>
            <proxy:method>DELETE</proxy:method>
        </proxy:actions>
        <proxy:headers>
            <proxy:header>content-type</proxy:header>
            <proxy:header>accept-encoding</proxy:header>
            <proxy:header>uit</proxy:header>
            <proxy:header>pst</proxy:header>
            <proxy:header>User-Agent</proxy:header>
            <proxy:header>Accept.*</proxy:header>
            <proxy:header>Content.*</proxy:header>
            <proxy:header>Authorization.*</proxy:header>
            <proxy:header>X-Method-Override</proxy:header>
            <proxy:header>If-.*</proxy:header>
            <proxy:header>Pragma</proxy:header>
            <proxy:header>Cache-Control</proxy:header>
            <proxy:header>X-Update-Nonce</proxy:header>
        </proxy:headers>
        <proxy:cookies>
            <proxy:cookie>DomAuthSessId</proxy:cookie>
            <proxy:cookie>LtpaToken</proxy:cookie>
            <proxy:cookie>LtpaToken2</proxy:cookie>
            <proxy:cookie>Shimmer</proxy:cookie>
            <proxy:cookie>ShimmerS</proxy:cookie>
            <proxy:cookie>JSESSIONID</proxy:cookie>
            <proxy:cookie>has</proxy:cookie>
            <proxy:cookie>PD-H-SESSION-ID</proxy:cookie>
<!-- TAM -->
            <proxy:cookie>PD-S-SESSION-ID</proxy:cookie>
<!-- TAM -->
			<proxy:cookie>SMIDENTITY</proxy:cookie>
<!-- SiteMinder -->
			<proxy:cookie>SMSESSION</proxy:cookie>
<!-- SiteMinder -->
        </proxy:cookies>
    </proxy:policy>

    <proxy:policy url="{metricsSvcRef}/*" acf="none" basic-auth-support="true">
        <proxy:actions>
            <proxy:method>GET</proxy:method>
            <proxy:method>POST</proxy:method>
            <proxy:method>PUT</proxy:method>
            <proxy:method>DELETE</proxy:method>
        </proxy:actions>
        <proxy:headers>
            <proxy:header>User-Agent</proxy:header>
            <proxy:header>Accept.*</proxy:header>
            <proxy:header>Content.*</proxy:header>
            <proxy:header>Authorization.*</proxy:header>
            <proxy:header>X-Method-Override</proxy:header>
            <proxy:header>If-.*</proxy:header>
            <proxy:header>Pragma</proxy:header>
            <proxy:header>Cache-Control</proxy:header>
            <proxy:header>X-Update-Nonce</proxy:header>
        </proxy:headers>
    </proxy:policy>
	
	<proxy:policy url="https://github.com/*" acf="none" basic-auth-support="false" auth-support="false">
		<proxy:actions>
            <proxy:method>GET</proxy:method>
        </proxy:actions>
        <proxy:headers>
            <proxy:header>User-Agent</proxy:header>
            <proxy:header>Accept.*</proxy:header>
            <proxy:header>Content.*</proxy:header>
            <proxy:header>Authorization.*</proxy:header>
            <proxy:header>X-Method-Override</proxy:header>
            <proxy:header>If-.*</proxy:header>
            <proxy:header>Pragma</proxy:header>
            <proxy:header>Cache-Control</proxy:header>
            <proxy:header>X-Update-Nonce</proxy:header>
        </proxy:headers>
	</proxy:policy>

<!--
    <proxy:policy url="https://{admin_replace_domino_server1}/*" acf="none" basic-auth-support="true" auth-support="true">
        <proxy:actions>
            <proxy:method>GET</proxy:method>
            <proxy:method>POST</proxy:method>
            <proxy:method>PUT</proxy:method>
            <proxy:method>DELETE</proxy:method>
        </proxy:actions>
        <proxy:headers>
            <proxy:header>content-type</proxy:header>
            <proxy:header>accept-encoding</proxy:header>
            <proxy:header>uit</proxy:header>
            <proxy:header>pst</proxy:header>
            <proxy:header>User-Agent</proxy:header>
            <proxy:header>Accept.*</proxy:header>
            <proxy:header>Content.*</proxy:header>
            <proxy:header>Authorization.*</proxy:header>
            <proxy:header>X-Method-Override</proxy:header>
            <proxy:header>If-.*</proxy:header>
            <proxy:header>Pragma</proxy:header>
            <proxy:header>Cache-Control</proxy:header>
            <proxy:header>X-Update-Nonce</proxy:header>
        </proxy:headers>
        <proxy:cookies>
            <proxy:cookie>DomAuthSessId</proxy:cookie>
            <proxy:cookie>LtpaToken</proxy:cookie>
            <proxy:cookie>LtpaToken2</proxy:cookie>
            <proxy:cookie>Shimmer</proxy:cookie>
            <proxy:cookie>ShimmerS</proxy:cookie>
            <proxy:cookie>JSESSIONID</proxy:cookie>
            <proxy:cookie>has</proxy:cookie>
            <proxy:cookie>PD-H-SESSION-ID</proxy:cookie><!- TAM ->
            <proxy:cookie>PD-S-SESSION-ID</proxy:cookie><!- TAM ->
	    	<proxy:cookie>SMIDENTITY</proxy:cookie><!- SiteMinder ->
   	    	<proxy:cookie>SMSESSION</proxy:cookie><!- SiteMinder ->
        </proxy:cookies>
    </proxy:policy>
-->

<!--
    <proxy:policy url="https://{admin_replace_exchange_server1}/*" acf="none" basic-auth-support="true" auth-support="true">
        <proxy:actions>
            <proxy:method>GET</proxy:method>
            <proxy:method>POST</proxy:method>
            <proxy:method>PUT</proxy:method>
            <proxy:method>DELETE</proxy:method>
        </proxy:actions>
        <proxy:headers>
            <proxy:header>content-type</proxy:header>
            <proxy:header>accept-encoding</proxy:header>
            <proxy:header>uit</proxy:header>
            <proxy:header>pst</proxy:header>
            <proxy:header>User-Agent</proxy:header>
            <proxy:header>Accept.*</proxy:header>
            <proxy:header>Content.*</proxy:header>
            <proxy:header>Authorization.*</proxy:header>
            <proxy:header>X-Method-Override</proxy:header>
            <proxy:header>If-.*</proxy:header>
            <proxy:header>Pragma</proxy:header>
            <proxy:header>Cache-Control</proxy:header>
            <proxy:header>X-Update-Nonce</proxy:header>
        </proxy:headers>
        <proxy:cookies>
            <proxy:cookie>DomAuthSessId</proxy:cookie>
            <proxy:cookie>LtpaToken</proxy:cookie>
            <proxy:cookie>LtpaToken2</proxy:cookie>
            <proxy:cookie>Shimmer</proxy:cookie>
            <proxy:cookie>ShimmerS</proxy:cookie>
            <proxy:cookie>JSESSIONID</proxy:cookie>
            <proxy:cookie>has</proxy:cookie>
            <proxy:cookie>PD-H-SESSION-ID</proxy:cookie><!- TAM ->
            <proxy:cookie>PD-S-SESSION-ID</proxy:cookie><!- TAM ->
	    	<proxy:cookie>SMIDENTITY</proxy:cookie><!- SiteMinder ->
	    	<proxy:cookie>SMSESSION</proxy:cookie><!- SiteMinder ->
        </proxy:cookies>
    </proxy:policy>
-->

    <!-- BEGIN CUSTOMIZATIONS HERE -->

    <!-- This is the default policy, which applies to all URLs not 
       explicitly listed in an earlier policy.  This policy allows only
       HTTP GET actions, and allows no cookies or headers to pass through. 
       This policy is disabled by default.  To enable it, remove the XML 
       comment characters.  Please consult the product documentation to  
       ensure you understand the security ramifications of doign this. 
       If enabled, this policy should always be last in the list.  -->
    <!--proxy:policy url="*" acf="none" basic-auth-support="true">
        <proxy:actions>
            <proxy:method>GET</proxy:method>
        </proxy:actions>
        <proxy:headers/>
        <proxy:cookies/>
    </proxy:policy-->

    <!-- Optional proxy settings - see the InfoCenter for more information -->
    <proxy:meta-data>
       <proxy:name>maxconnectionsperhost</proxy:name>
       <proxy:value>100</proxy:value>
    </proxy:meta-data>
    <proxy:meta-data>
       <proxy:name>maxtotalconnections</proxy:name>
       <proxy:value>200</proxy:value>
    </proxy:meta-data>
    <proxy:meta-data>
       <proxy:name>unsigned_ssl_certificate_support</proxy:name>
       <proxy:value>true</proxy:value>
    </proxy:meta-data>
    <proxy:meta-data>
       <proxy:name>connection-timeout</proxy:name>
       <proxy:value>30000</proxy:value>
    </proxy:meta-data>
    <proxy:meta-data>
       <proxy:name>socket-timeout</proxy:name>
       <proxy:value>30000</proxy:value>
    </proxy:meta-data>
    <proxy:meta-data>
       <proxy:name>circular_redirects</proxy:name>
       <proxy:value>true</proxy:value>
    </proxy:meta-data>
    <proxy:meta-data>
       <proxy:name>max_circular_redirects</proxy:name>
       <proxy:value>100</proxy:value>
    </proxy:meta-data>

    <!-- Widget Container proxy specific -->
    <proxy:meta-data>
       <proxy:name>check-interval</proxy:name>
       <proxy:value>10000</proxy:value>
    </proxy:meta-data>
    <proxy:meta-data>
       <proxy:name>check-delay</proxy:name>
       <proxy:value>60000</proxy:value>
    </proxy:meta-data> 
    <proxy:meta-data>
       <proxy:name>retries</proxy:name>
       <proxy:value>2</proxy:value>
    </proxy:meta-data>
    <proxy:meta-data>
       <proxy:name>rewriteCookies</proxy:name>
       <proxy:value>false</proxy:value>
    </proxy:meta-data>
</proxy:proxy-rules>
</proxy:config>