Twitter widget for IBM Connections
========
The Twitter Widget for IBM Connection is a widget that displays a user's twitter feed into their profile in IBM Connections.  Once installed this widget looks like this:

![Twitter Widget](https://raw.github.com/justnudge/twitter-widget/master/documentation/example.png)

To install the Twitter Widget for IBM Connections follow the instructions below.  Any questions please raise an [issue](https://github.com/justnudge/twitter-widget/issues) and we shall respond to it as soon as possible.

Installation
===
To install the Twitter Widget for IBM Connections you need to do the following:

1. Add the Twitter field into the data model for the profiles.
2. Add the Twitter field to the profile edit page so that users can add their twitter name.
3. Add the Twitter widget to the profile in view so that the twitter feed can be display.
4. Create the messages files.
5. Add the URL into the ajax proxy.

**NOTE:** A list of sample configuration files are included, showing their before and after appearance.  If you need assistance setting up the environment it is recommended that you download the files and diff them with each other (so that you can see the before and after) and also with your configuration.

Create field on profile
--------
Details on how to create a field on the profile are available [here](http://www-10.lotus.com/ldd/lcwiki.nsf/xpDocViewer.xsp?lookupName=IBM+Connections+4.0+documentation#action=openDocument&res_title=Extension_properties_in_the_data_model_ic40&content=pdcontent "Extension properties in the data model").

To use the widget you need to create the following extension:

    <simpleAttribute extensionId="twitterName" length="64" />

Add field to profile edit page
--------
Once the field is created, you need to add it to the profile edit page so that a user can add their twitter username to connections.  Details on how to do this are available [here](http://www-10.lotus.com/ldd/lcwiki.nsf/xpDocViewer.xsp?lookupName=IBM+Connections+4.0+documentation#action=openDocument&res_title=Creating_a_simple_profile_data_model_and_template_customization_ic40&content=pdcontent "Creating a simple profile data model and template customization"), starting with Step 5.

In the profile-types.xml file add the following xml stanza at the end.

    <property>
	   <ref>twitterName</ref>
	   <updatability>readwrite</updatability>
	   <hidden>false</hidden>
	</property>

In step 6 of the above link modify the file LotusConnections-config/profiles/template/profileEdit.tfl and add the following stanza:

    <@util.renderFormControl ref="twitterName" singleColumnLayout=false nlsBundle="jnmessages" nlsKey="jnTwitterWidget"/>

When the server is restarted, the successful completion of this section can be verified by navigating to your profile and choosing "Edit".  The field should be displayed as follows:

![Twitter field creation.](https://raw.github.com/justnudge/twitter-widget/master/documentation/field-creation.png)

Add widget to profile view page
--------
Details on how to install a widget are available [here](http://www-10.lotus.com/ldd/lcwiki.nsf/xpDocViewer.xsp?lookupName=IBM+Connections+4.0+documentation#action=openDocument&res_title=Enabling_custom_widgets_for_Profiles_ic40&content=pdcontent "Widget Installation").

The widget-config.xml needs two additions in the "profilesView" section create the widget definition:

    <widgetDef defId="jnTwitterWidget" 
			   bundleRefId="jnmessages"
			   url="https://raw.github.com/justnudge/twitter-widget/master/TwitterWidget.xml" 
			   modes="view" />

And then add the widget to the page:

    <widgetInstance uiLocation="tabsWidget1" defIdRef="jnTwitterWidget"/>

See the widget-config.xml file for more information.

**NOTE:** The widget can also be deployed locally, for further details see the section "Notes on installing the widget locally".

Add the URL into the ajax proxy.
--
The procedure for performing this operation is defined [here](http://www-10.lotus.com/ldd/lcwiki.nsf/xpDocViewer.xsp?lookupName=IBM+Connections+4.0+documentation#action=openDocument&res_title=Configuring_the_AJAX_proxy_ic40&content=pdcontent "Ajax Proxy").

The change that needs to be made to the proxy-config.tpl is as follows:

    <proxy:policy url="https://raw.github.com/*" acf="none" basic-auth-support="false" auth-support="false">
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


Create the messages file
--------
Full details on how to use the messages file are available at [https://github.com/justnudge/messages](https://github.com/justnudge/messages "Messages").

Notes on installing the widget locally
--------
The widget can be run either from an external host (i.e. github) or from your own local servers.  In order to run from your own local server the following needs to be performed:

- The twitter repository needs to be cloned onto a server that is accessible via HTTP (or preferably HTTPS).
- The widget configuration needs to change to be as follows:

        <widgetDef defId="jnTwitterWidget" 
	               bundleRefId="jnmessages"
	               url="/twitter-widget/TwitterWidget.xml" 
			       modes="view">
			<itemSet>
				<item name="messagesBaseURL" value="https://connections4.justnudge.com/jnmessages" />
				<item name="imagesURL" value="https://connections4.justnudge.com/twitter-widget" />
            </itemSet>
        </widgetDef>

Running the widget locally has the advantage of speed and security.